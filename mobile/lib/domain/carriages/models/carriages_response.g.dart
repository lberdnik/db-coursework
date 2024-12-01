// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carriages_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CarriagesResponse _$$_CarriagesResponseFromJson(Map<String, dynamic> json) =>
    _$_CarriagesResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => CarriageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CarriagesResponseToJson(
        _$_CarriagesResponse instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
    };
