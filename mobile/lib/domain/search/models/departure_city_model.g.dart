// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'departure_city_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DepartureCityModel _$$_DepartureCityModelFromJson(
        Map<String, dynamic> json) =>
    _$_DepartureCityModel(
      arrivalCity: json['arrival_city'] as String,
      arrivalPlace: json['arrival_place'] as String,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$$_DepartureCityModelToJson(
        _$_DepartureCityModel instance) =>
    <String, dynamic>{
      'arrival_city': instance.arrivalCity,
      'arrival_place': instance.arrivalPlace,
      'id': instance.id,
    };
