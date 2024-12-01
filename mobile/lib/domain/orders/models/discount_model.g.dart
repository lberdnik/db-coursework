// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DiscountModel _$$_DiscountModelFromJson(Map<String, dynamic> json) =>
    _$_DiscountModel(
      id: json['id'] as int,
      user: json['user'] as int,
      usageAmount: json['usage_amount'] as int,
      discountType: DiscountTypeModel.fromJson(
          json['discount_type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DiscountModelToJson(_$_DiscountModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'usage_amount': instance.usageAmount,
      'discount_type': instance.discountType.toJson(),
    };
