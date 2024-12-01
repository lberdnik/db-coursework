import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_response.freezed.dart';
part 'payment_response.g.dart';

@freezed
class PaymentResponse with _$PaymentResponse {
  const factory PaymentResponse({
    required String clientSecret,
  }) = _OrdersRequest;

  factory PaymentResponse.fromJson(Map<String, Object?> json) =>
      _$PaymentResponseFromJson(json);
}
