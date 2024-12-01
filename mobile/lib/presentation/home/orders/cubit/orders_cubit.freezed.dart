// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrdersState {
  List<OrderModel> get orders => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  FilterType get currentFilter => throw _privateConstructorUsedError;
  List<OrderModel> get filteredOrders => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrdersStateCopyWith<OrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersStateCopyWith<$Res> {
  factory $OrdersStateCopyWith(
          OrdersState value, $Res Function(OrdersState) then) =
      _$OrdersStateCopyWithImpl<$Res, OrdersState>;
  @useResult
  $Res call(
      {List<OrderModel> orders,
      bool isLoading,
      FilterType currentFilter,
      List<OrderModel> filteredOrders});
}

/// @nodoc
class _$OrdersStateCopyWithImpl<$Res, $Val extends OrdersState>
    implements $OrdersStateCopyWith<$Res> {
  _$OrdersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? isLoading = null,
    Object? currentFilter = null,
    Object? filteredOrders = null,
  }) {
    return _then(_value.copyWith(
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentFilter: null == currentFilter
          ? _value.currentFilter
          : currentFilter // ignore: cast_nullable_to_non_nullable
              as FilterType,
      filteredOrders: null == filteredOrders
          ? _value.filteredOrders
          : filteredOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrdersStateCopyWith<$Res>
    implements $OrdersStateCopyWith<$Res> {
  factory _$$_OrdersStateCopyWith(
          _$_OrdersState value, $Res Function(_$_OrdersState) then) =
      __$$_OrdersStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<OrderModel> orders,
      bool isLoading,
      FilterType currentFilter,
      List<OrderModel> filteredOrders});
}

/// @nodoc
class __$$_OrdersStateCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$_OrdersState>
    implements _$$_OrdersStateCopyWith<$Res> {
  __$$_OrdersStateCopyWithImpl(
      _$_OrdersState _value, $Res Function(_$_OrdersState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? isLoading = null,
    Object? currentFilter = null,
    Object? filteredOrders = null,
  }) {
    return _then(_$_OrdersState(
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentFilter: null == currentFilter
          ? _value.currentFilter
          : currentFilter // ignore: cast_nullable_to_non_nullable
              as FilterType,
      filteredOrders: null == filteredOrders
          ? _value._filteredOrders
          : filteredOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
    ));
  }
}

/// @nodoc

class _$_OrdersState implements _OrdersState {
  const _$_OrdersState(
      {final List<OrderModel> orders = const <OrderModel>[],
      this.isLoading = true,
      this.currentFilter = FilterType.all,
      final List<OrderModel> filteredOrders = const <OrderModel>[]})
      : _orders = orders,
        _filteredOrders = filteredOrders;

  final List<OrderModel> _orders;
  @override
  @JsonKey()
  List<OrderModel> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final FilterType currentFilter;
  final List<OrderModel> _filteredOrders;
  @override
  @JsonKey()
  List<OrderModel> get filteredOrders {
    if (_filteredOrders is EqualUnmodifiableListView) return _filteredOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredOrders);
  }

  @override
  String toString() {
    return 'OrdersState(orders: $orders, isLoading: $isLoading, currentFilter: $currentFilter, filteredOrders: $filteredOrders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrdersState &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.currentFilter, currentFilter) ||
                other.currentFilter == currentFilter) &&
            const DeepCollectionEquality()
                .equals(other._filteredOrders, _filteredOrders));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_orders),
      isLoading,
      currentFilter,
      const DeepCollectionEquality().hash(_filteredOrders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrdersStateCopyWith<_$_OrdersState> get copyWith =>
      __$$_OrdersStateCopyWithImpl<_$_OrdersState>(this, _$identity);
}

abstract class _OrdersState implements OrdersState {
  const factory _OrdersState(
      {final List<OrderModel> orders,
      final bool isLoading,
      final FilterType currentFilter,
      final List<OrderModel> filteredOrders}) = _$_OrdersState;

  @override
  List<OrderModel> get orders;
  @override
  bool get isLoading;
  @override
  FilterType get currentFilter;
  @override
  List<OrderModel> get filteredOrders;
  @override
  @JsonKey(ignore: true)
  _$$_OrdersStateCopyWith<_$_OrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}
