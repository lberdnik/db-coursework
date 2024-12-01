// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RouteModel _$$_RouteModelFromJson(Map<String, dynamic> json) =>
    _$_RouteModel(
      id: json['id'] as int,
      departureCity: DepartureCityModel.fromJson(
          json['departure_city'] as Map<String, dynamic>),
      departureTime: json['departure_time'] as String,
      arrivalPoints: (json['arrival_points'] as List<dynamic>?)
          ?.map((e) => ArrivalPointModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      carriages: RouteCarriagesModel.fromJson(
          json['carriages'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RouteModelToJson(_$_RouteModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'departure_city': instance.departureCity.toJson(),
      'departure_time': instance.departureTime,
      'arrival_points': instance.arrivalPoints?.map((e) => e.toJson()).toList(),
      'carriages': instance.carriages.toJson(),
    };
