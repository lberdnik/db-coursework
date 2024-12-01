import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_request.freezed.dart';
part 'payment_request.g.dart';

@freezed
class PaymentRequest with _$PaymentRequest {
  const factory PaymentRequest({
    required int id,
    required int? discountId,
  }) = _PaymentRequest;

  factory PaymentRequest.fromJson(Map<String, Object?> json) =>
      _$PaymentRequestFromJson(json);
}
