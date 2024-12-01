// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoutesRequest _$$_RoutesRequestFromJson(Map<String, dynamic> json) =>
    _$_RoutesRequest(
      departureCity: json['departure_city'] as int,
      arrivalCity: json['arrival_city'] as int,
      departureDay: json['departure_day'] as String,
    );

Map<String, dynamic> _$$_RoutesRequestToJson(_$_RoutesRequest instance) =>
    <String, dynamic>{
      'departure_city': instance.departureCity,
      'arrival_city': instance.arrivalCity,
      'departure_day': instance.departureDay,
    };
