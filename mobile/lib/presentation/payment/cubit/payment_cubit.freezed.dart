// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentState {
  OrderModel? get order => throw _privateConstructorUsedError;
  PaymentIntentsStatus get paymentStatus => throw _privateConstructorUsedError;
  List<DiscountModel> get discounts => throw _privateConstructorUsedError;
  dynamic get selectedDiscountIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentStateCopyWith<PaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
  @useResult
  $Res call(
      {OrderModel? order,
      PaymentIntentsStatus paymentStatus,
      List<DiscountModel> discounts,
      dynamic selectedDiscountIndex});

  $OrderModelCopyWith<$Res>? get order;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = freezed,
    Object? paymentStatus = null,
    Object? discounts = null,
    Object? selectedDiscountIndex = freezed,
  }) {
    return _then(_value.copyWith(
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderModel?,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentIntentsStatus,
      discounts: null == discounts
          ? _value.discounts
          : discounts // ignore: cast_nullable_to_non_nullable
              as List<DiscountModel>,
      selectedDiscountIndex: freezed == selectedDiscountIndex
          ? _value.selectedDiscountIndex
          : selectedDiscountIndex // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderModelCopyWith<$Res>? get order {
    if (_value.order == null) {
      return null;
    }

    return $OrderModelCopyWith<$Res>(_value.order!, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PaymentStateCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$$_PaymentStateCopyWith(
          _$_PaymentState value, $Res Function(_$_PaymentState) then) =
      __$$_PaymentStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {OrderModel? order,
      PaymentIntentsStatus paymentStatus,
      List<DiscountModel> discounts,
      dynamic selectedDiscountIndex});

  @override
  $OrderModelCopyWith<$Res>? get order;
}

/// @nodoc
class __$$_PaymentStateCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_PaymentState>
    implements _$$_PaymentStateCopyWith<$Res> {
  __$$_PaymentStateCopyWithImpl(
      _$_PaymentState _value, $Res Function(_$_PaymentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = freezed,
    Object? paymentStatus = null,
    Object? discounts = null,
    Object? selectedDiscountIndex = freezed,
  }) {
    return _then(_$_PaymentState(
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderModel?,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentIntentsStatus,
      discounts: null == discounts
          ? _value._discounts
          : discounts // ignore: cast_nullable_to_non_nullable
              as List<DiscountModel>,
      selectedDiscountIndex: freezed == selectedDiscountIndex
          ? _value.selectedDiscountIndex!
          : selectedDiscountIndex,
    ));
  }
}

/// @nodoc

class _$_PaymentState implements _PaymentState {
  const _$_PaymentState(
      {this.order,
      this.paymentStatus = PaymentIntentsStatus.Unknown,
      final List<DiscountModel> discounts = const [],
      this.selectedDiscountIndex = -1})
      : _discounts = discounts;

  @override
  final OrderModel? order;
  @override
  @JsonKey()
  final PaymentIntentsStatus paymentStatus;
  final List<DiscountModel> _discounts;
  @override
  @JsonKey()
  List<DiscountModel> get discounts {
    if (_discounts is EqualUnmodifiableListView) return _discounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_discounts);
  }

  @override
  @JsonKey()
  final dynamic selectedDiscountIndex;

  @override
  String toString() {
    return 'PaymentState(order: $order, paymentStatus: $paymentStatus, discounts: $discounts, selectedDiscountIndex: $selectedDiscountIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentState &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            const DeepCollectionEquality()
                .equals(other._discounts, _discounts) &&
            const DeepCollectionEquality()
                .equals(other.selectedDiscountIndex, selectedDiscountIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      order,
      paymentStatus,
      const DeepCollectionEquality().hash(_discounts),
      const DeepCollectionEquality().hash(selectedDiscountIndex));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentStateCopyWith<_$_PaymentState> get copyWith =>
      __$$_PaymentStateCopyWithImpl<_$_PaymentState>(this, _$identity);
}

abstract class _PaymentState implements PaymentState {
  const factory _PaymentState(
      {final OrderModel? order,
      final PaymentIntentsStatus paymentStatus,
      final List<DiscountModel> discounts,
      final dynamic selectedDiscountIndex}) = _$_PaymentState;

  @override
  OrderModel? get order;
  @override
  PaymentIntentsStatus get paymentStatus;
  @override
  List<DiscountModel> get discounts;
  @override
  dynamic get selectedDiscountIndex;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentStateCopyWith<_$_PaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}
