// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TicketModel _$$_TicketModelFromJson(Map<String, dynamic> json) =>
    _$_TicketModel(
      id: json['id'] as int,
      carriage: json['carriage'] as int,
      seatNumber: json['seat_number'] as int,
      price: json['price'] as String,
      departurePoint: ArrivalPointModel.fromJson(
          json['departure_point'] as Map<String, dynamic>),
      arrivalPoint: ArrivalPointModel.fromJson(
          json['arrival_point'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TicketModelToJson(_$_TicketModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'carriage': instance.carriage,
      'seat_number': instance.seatNumber,
      'price': instance.price,
      'departure_point': instance.departurePoint.toJson(),
      'arrival_point': instance.arrivalPoint.toJson(),
    };
