// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arrival_point_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArrivalPointModel _$$_ArrivalPointModelFromJson(Map<String, dynamic> json) =>
    _$_ArrivalPointModel(
      id: json['id'] as int,
      arrivalCity: json['arrival_city'] as String,
      arrivalPlace: json['arrival_place'] as String,
      arrivalTime: json['arrival_time'] as String?,
      price: json['price'] as String?,
      order: json['order'] as int?,
    );

Map<String, dynamic> _$$_ArrivalPointModelToJson(
        _$_ArrivalPointModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'arrival_city': instance.arrivalCity,
      'arrival_place': instance.arrivalPlace,
      'arrival_time': instance.arrivalTime,
      'price': instance.price,
      'order': instance.order,
    };
