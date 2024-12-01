import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:railways/domain/orders/models/discount_type_model.dart';

part 'discount_model.freezed.dart';
part 'discount_model.g.dart';

@freezed
class DiscountModel with _$DiscountModel {
  const factory DiscountModel({
    required int id,
    required int user,
    required int usageAmount,
    required DiscountTypeModel discountType,
  }) = _DiscountModel;

  factory DiscountModel.fromJson(Map<String, Object?> json) =>
      _$DiscountModelFromJson(json);
}
