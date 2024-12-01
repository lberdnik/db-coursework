// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carriage_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CarriageModel _$$_CarriageModelFromJson(Map<String, dynamic> json) =>
    _$_CarriageModel(
      id: json['id'] as int?,
      carriageType: json['carriage_type'] as int,
      seatAmount: json['seat_amount'] as int,
      route: RouteModel.fromJson(json['route'] as Map<String, dynamic>),
      availableSeats: (json['available_seats'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$$_CarriageModelToJson(_$_CarriageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'carriage_type': instance.carriageType,
      'seat_amount': instance.seatAmount,
      'route': instance.route.toJson(),
      'available_seats': instance.availableSeats,
    };
