import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:railways/domain/orders/models/discount_model.dart';
import 'package:railways/domain/orders/models/order_model.dart';
import 'package:railways/domain/orders/repository/oders_repository.dart';
import 'package:railways/injection.dart';
import 'package:railways/presentation/home/cubit/home_cubit.dart';

part 'payment_cubit.freezed.dart';
part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  final OrdersRepository _ordersRepository;

  PaymentCubit(this._ordersRepository) : super(const PaymentState());

  void init(OrderModel order, List<DiscountModel> discounts) {
    emit(state.copyWith(order: order, discounts: discounts));
  }

  Future<void> payForOrder() async {
    emit(state.copyWith(paymentStatus: PaymentIntentsStatus.Processing));
    try {
      final clientSecret = await _ordersRepository.payForOrder(
        state.order!.id,
        state.selectedDiscountIndex == -1
            ? null
            : state.discounts[state.selectedDiscountIndex].id,
      );
      final confirmResponse = await Stripe.instance.confirmPayment(
        paymentIntentClientSecret: clientSecret,
        data: const PaymentMethodParams.card(
          paymentMethodData: PaymentMethodData(),
        ),
      );

      await _ordersRepository.updateOrderStatus(
        state.order!.id,
        'success',
        state.selectedDiscountIndex == -1
            ? null
            : state.discounts[state.selectedDiscountIndex].id,
      );
      emit(state.copyWith(paymentStatus: confirmResponse.status));
      await getIt.get<HomeCubit>().initDiscounts();
    } catch (e) {
      logger.e('Failed to payForOrder: $e');
      emit(state.copyWith(paymentStatus: PaymentIntentsStatus.Canceled));
      await _ordersRepository.updateOrderStatus(state.order!.id, 'fail');
    }
  }

  void updateDiscount(int discountIndex, bool? value) {
    if (value ?? false) {
      emit(state.copyWith(selectedDiscountIndex: discountIndex));
    } else {
      emit(state.copyWith(selectedDiscountIndex: -1));
    }
  }

  String calculateTotalPrice() {
    if (state.selectedDiscountIndex == -1) {
      return state.order!.totalPrice!;
    }
    final discount = state.discounts[state.selectedDiscountIndex];
    final res = (1 - discount.discountType.discountPercent / 100) *
        double.parse(state.order!.totalPrice!);
    return res.toString();
  }
}
