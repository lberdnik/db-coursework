// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DiscountTypeModel _$$_DiscountTypeModelFromJson(Map<String, dynamic> json) =>
    _$_DiscountTypeModel(
      id: json['id'] as int,
      discountTypeName: json['discount_type_name'] as String,
      discountPercent: (json['discount_percent'] as num).toDouble(),
      discountLimit: json['discount_limit'] as int?,
    );

Map<String, dynamic> _$$_DiscountTypeModelToJson(
        _$_DiscountTypeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'discount_type_name': instance.discountTypeName,
      'discount_percent': instance.discountPercent,
      'discount_limit': instance.discountLimit,
    };
