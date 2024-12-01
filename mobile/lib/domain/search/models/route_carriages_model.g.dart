// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_carriages_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RouteCarriagesModel _$$_RouteCarriagesModelFromJson(
        Map<String, dynamic> json) =>
    _$_RouteCarriagesModel(
      availableSeatsAmount: json['available_seats_amount'] as int,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$$_RouteCarriagesModelToJson(
        _$_RouteCarriagesModel instance) =>
    <String, dynamic>{
      'available_seats_amount': instance.availableSeatsAmount,
      'price': instance.price,
    };
