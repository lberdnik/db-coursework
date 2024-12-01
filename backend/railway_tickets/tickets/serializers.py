from datetime import datetime

from rest_framework import serializers
from rest_framework.serializers import ModelSerializer, Serializer

from tickets.models import Ticket, Route, ArrivalPoint, Order, City, Carriage, CarriageType, RouteToArrivalPoint

DATETIME_FORMAT = "%Y-%m-%d %H:%M"


class CitySerializer(ModelSerializer):

    class Meta:
        model = City
        fields = ('id', 'city_name', 'description')


class ArrivalPointSerializer(ModelSerializer):
    arrival_city = serializers.CharField(max_length=32, required=True)
    arrival_place = serializers.CharField(max_length=255, required=True)

    class Meta:
        model = ArrivalPoint
        fields = ('id', 'arrival_city', 'arrival_place')

    def to_internal_value(self, data):
        if arrival_city := data.get('arrival_city'):
            try:
                data['arrival_city'] = City.objects.get(city_name=arrival_city)
            except City.DoesNotExist:
                raise serializers.ValidationError({'arrival_city': 'City does not exist'})
        return data


class CarriageTypeSerializer(ModelSerializer):
    class Meta:
        model = CarriageType
        fields = ('id', 'carriage_type_name', 'description')


class NestedArrivalPointSerializer(Serializer):
    arrival_point = serializers.CharField(max_length=32)
    price = serializers.DecimalField(max_digits=10, decimal_places=2, required=True)
    arrival_time = serializers.DateTimeField(format=DATETIME_FORMAT, required=True)
    order = serializers.IntegerField(required=False, write_only=True)

    def validate_arrival_point_id(self, data):
        if ArrivalPoint.objects.filter(id=data):
            raise serializers.ValidationError('No arrival point with this id')
        return data

    def to_internal_value(self, data):
        super().to_internal_value(data)
        data['arrival_point'] = ArrivalPoint.objects.get(id=data['arrival_point'])
        return data


class RouteSerializer(ModelSerializer):
    departure_city = serializers.CharField(max_length=32)
    departure_time = serializers.DateTimeField(format=DATETIME_FORMAT)
    arrival_points = NestedArrivalPointSerializer(many=True, write_only=True)

    class Meta:
        model = Route
        fields = ('id', 'departure_city', 'departure_time', 'arrival_points')

    def to_internal_value(self, data):
        super().to_internal_value(data)
        if departure_city := data.get('departure_city'):
            try:
                data['departure_city'] = City.objects.get(city_name=departure_city)
            except City.DoesNotExist:
                raise serializers.ValidationError({'departure_city': 'City does not exist'})
        points = data['arrival_points']

        if not all(points[i]['price'] <= points[i+1]['price'] and
                   datetime.fromisoformat(points[i]['arrival_time']) <= datetime.fromisoformat(points[i+1]['arrival_time']) for i in range(len(points) - 1)):
            raise serializers.ValidationError({'arrival_points': 'The order of arrival points is invalid, check time and price'})

        if datetime.strptime(points[0]['arrival_time'], DATETIME_FORMAT) < datetime.strptime(data['departure_time'], DATETIME_FORMAT):
            raise serializers.ValidationError({'arrival_points': 'First arrival time is before the departure time'})

        return data

    def to_representation(self, instance):
        data = super().to_representation(instance=instance)
        arrival_points = RouteToArrivalPoint.objects.filter(route=data['id'])
        nested_data = NestedArrivalPointSerializer(arrival_points, many=True).data
        data['arrival_points'] = nested_data
        return data

    def create(self, validated_data):
        arrival_points = validated_data.pop('arrival_points')
        route = Route.objects.create(**validated_data)
        for order, point in enumerate(arrival_points):
            point['order'] = order + 1
            RouteToArrivalPoint.objects.create(route=route, **point)

        return route


class CarriageSerializer(ModelSerializer):

    class Meta:
        model = Carriage
        fields = ('carriage_type', 'seat_amount', 'route')

    def validate_seat_amount(self, data):
        if data > 100:
            raise serializers.ValidationError('Max seat amount is 100')
        return data

    def to_representation(self, instance):
        data = super().to_representation(instance=instance)
        data['route'] = RouteSerializer(instance.route).data
        return data


class TicketSerializer(ModelSerializer):

    class Meta:
        model = Ticket
        fields = ('id', 'arrival_point', 'carriage', 'seat_number')

    def to_internal_value(self, data):
        data = super().to_internal_value(data)
        if data.get('carriage').seat_amount < data.get('seat_number'):
            raise serializers.ValidationError({'seat_number': 'Seat number is not found in this carriage'})

        if Ticket.objects.filter(arrival_point=data['arrival_point'], carriage=data['carriage'], seat_number=data['seat_number']):
            raise serializers.ValidationError({'seat_number': 'This seat is not available'})

        route_point = RouteToArrivalPoint.objects.get(arrival_point=data['arrival_point'], route=data['carriage'].route)
        data['price'] = route_point.price
        return data

    def to_representation(self, instance):
        data = super().to_representation(instance=instance)
        data['carriage'] = CarriageSerializer(instance.carriage).data
        data['price'] = instance.price
        return data

    def create(self, validated_data):
        current_user = self.context['request'].user
        if not (exist_order := Order.objects.filter(order_status="pending", user=current_user)):
            order_info = {
                "user": current_user,
                "order_status": "pending",
                "total_price": validated_data.get('price')
            }
            order = Order.objects.create(**order_info)
        else:
            order = exist_order.first()
            order.total_price += validated_data.get('price')
            order.save()
        ticket = Ticket.objects.create(order=order, **validated_data)

        return ticket


class SearchRouteSerializer(Serializer):
    departure_city = serializers.CharField(max_length=32)
    arrival_city = serializers.CharField(write_only=True, max_length=32)
    departure_day = serializers.DateTimeField(write_only=True, format='%Y-%m-%d')
    arrival_day = serializers.DateField(write_only=True, format='%Y-%m-%d')

    def validate_departure_city(self, data):
        if not City.objects.filter(city_name=data):
            raise serializers.ValidationError('City does not exist')
        return data

    def to_internal_value(self, data):
        filtered_routes = Route.objects.filter(departure_city__city_name=data.get('departure_city'))

        if departure_day := data.get('departure_day'):
            filtered_routes = filtered_routes.filter(departure_time__date=datetime.strptime(departure_day, '%Y-%m-%d'))

        if arrival_city := data.get('arrival_city'):
            filtered_routes = filtered_routes.filter(routetoarrivalpoint__arrival_point__arrival_city__city_name=arrival_city)

        if arrival_day := data.get('arrival_day'):
            filtered_routes = filtered_routes.filter(routetoarrivalpoint__arrival_time__date=datetime.strptime(arrival_day, '%Y-%m-%d'))

        return RouteSerializer(filtered_routes, many=True).data


class OrderSerializer(ModelSerializer):

    class Meta:
        model = Order
        fields = ('id', 'order_status', 'ordered_tickets', 'total_price', 'user')
