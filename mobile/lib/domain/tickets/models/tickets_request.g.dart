// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tickets_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TicketsRequest _$$_TicketsRequestFromJson(Map<String, dynamic> json) =>
    _$_TicketsRequest(
      departurePoint: json['departure_point'] as int,
      arrivalPoint: json['arrival_point'] as int,
      carriage: json['carriage'] as int,
      seatNumber: json['seat_number'] as int,
    );

Map<String, dynamic> _$$_TicketsRequestToJson(_$_TicketsRequest instance) =>
    <String, dynamic>{
      'departure_point': instance.departurePoint,
      'arrival_point': instance.arrivalPoint,
      'carriage': instance.carriage,
      'seat_number': instance.seatNumber,
    };
