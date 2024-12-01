// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discounts_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DiscountResponse _$$_DiscountResponseFromJson(Map<String, dynamic> json) =>
    _$_DiscountResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => DiscountModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DiscountResponseToJson(_$_DiscountResponse instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
    };
