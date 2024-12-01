import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:railways/domain/orders/models/discount_model.dart';

part 'discounts_response.freezed.dart';
part 'discounts_response.g.dart';

@freezed
class DiscountResponse with _$DiscountResponse {
  const factory DiscountResponse({
    required List<DiscountModel> data,
  }) = _DiscountResponse;

  factory DiscountResponse.fromJson(Map<String, Object?> json) =>
      _$DiscountResponseFromJson(json);
}
