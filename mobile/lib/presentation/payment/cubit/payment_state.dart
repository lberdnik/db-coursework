part of 'payment_cubit.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState({
    OrderModel? order,
    @Default(PaymentIntentsStatus.Unknown) PaymentIntentsStatus paymentStatus,
    @Default([]) List<DiscountModel> discounts,
    @Default(-1) selectedDiscountIndex,
  }) = _PaymentState;
}
