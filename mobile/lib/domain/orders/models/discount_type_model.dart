import 'package:freezed_annotation/freezed_annotation.dart';

part 'discount_type_model.freezed.dart';
part 'discount_type_model.g.dart';

@freezed
class DiscountTypeModel with _$DiscountTypeModel {
  const factory DiscountTypeModel({
    required int id,
    required String discountTypeName,
    required double discountPercent,
    required int? discountLimit,
  }) = _DiscountTypeModel;

  factory DiscountTypeModel.fromJson(Map<String, Object?> json) =>
      _$DiscountTypeModelFromJson(json);
}
