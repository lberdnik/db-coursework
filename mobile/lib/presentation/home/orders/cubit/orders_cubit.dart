import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:railways/domain/orders/models/order_model.dart';
import 'package:railways/domain/orders/repository/oders_repository.dart';
import 'package:railways/presentation/home/orders/widgets/filter_button.dart';

part 'orders_cubit.freezed.dart';
part 'orders_state.dart';

class OrdersCubit extends Cubit<OrdersState> {
  final OrdersRepository _ordersRepository;

  OrdersCubit(this._ordersRepository) : super(const OrdersState());

  Future<void> init() async {
    emit(state.copyWith(isLoading: true));
    final orders = List<OrderModel>.from(await _ordersRepository.fetchOrders())
      ..sort(
        (a, b) => b.id.compareTo(a.id),
      );
    emit(
      state.copyWith(
        orders: orders,
        filteredOrders: orders,
        isLoading: false,
      ),
    );
  }

  void updateFilter(FilterType filter) {
    final orders = state.orders
        .where(
          (e) =>
              e.orderStatus == stringFromFilterType(filter) ||
              filter == FilterType.all,
        )
        .toList();
    emit(
      state.copyWith(
        currentFilter: filter,
        filteredOrders: orders,
      ),
    );
  }
}
