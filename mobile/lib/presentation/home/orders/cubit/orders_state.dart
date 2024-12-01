part of 'orders_cubit.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState({
    @Default(<OrderModel>[]) List<OrderModel> orders,
    @Default(true) bool isLoading,
    @Default(FilterType.all) FilterType currentFilter,
    @Default(<OrderModel>[]) List<OrderModel> filteredOrders,
  }) = _OrdersState;
}
