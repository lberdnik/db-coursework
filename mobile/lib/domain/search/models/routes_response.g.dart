// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoutesResponse _$$_RoutesResponseFromJson(Map<String, dynamic> json) =>
    _$_RoutesResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => RouteModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RoutesResponseToJson(_$_RoutesResponse instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
    };
