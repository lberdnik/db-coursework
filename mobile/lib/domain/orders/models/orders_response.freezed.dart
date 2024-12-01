// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrdersResponse _$OrdersResponseFromJson(Map<String, dynamic> json) {
  return _OrdersResponse.fromJson(json);
}

/// @nodoc
mixin _$OrdersResponse {
  @JsonKey()
  List<OrderModel> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrdersResponseCopyWith<OrdersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersResponseCopyWith<$Res> {
  factory $OrdersResponseCopyWith(
          OrdersResponse value, $Res Function(OrdersResponse) then) =
      _$OrdersResponseCopyWithImpl<$Res, OrdersResponse>;
  @useResult
  $Res call({@JsonKey() List<OrderModel> data});
}

/// @nodoc
class _$OrdersResponseCopyWithImpl<$Res, $Val extends OrdersResponse>
    implements $OrdersResponseCopyWith<$Res> {
  _$OrdersResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrdersResponseCopyWith<$Res>
    implements $OrdersResponseCopyWith<$Res> {
  factory _$$_OrdersResponseCopyWith(
          _$_OrdersResponse value, $Res Function(_$_OrdersResponse) then) =
      __$$_OrdersResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey() List<OrderModel> data});
}

/// @nodoc
class __$$_OrdersResponseCopyWithImpl<$Res>
    extends _$OrdersResponseCopyWithImpl<$Res, _$_OrdersResponse>
    implements _$$_OrdersResponseCopyWith<$Res> {
  __$$_OrdersResponseCopyWithImpl(
      _$_OrdersResponse _value, $Res Function(_$_OrdersResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_OrdersResponse(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrdersResponse implements _OrdersResponse {
  const _$_OrdersResponse({@JsonKey() required final List<OrderModel> data})
      : _data = data;

  factory _$_OrdersResponse.fromJson(Map<String, dynamic> json) =>
      _$$_OrdersResponseFromJson(json);

  final List<OrderModel> _data;
  @override
  @JsonKey()
  List<OrderModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'OrdersResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrdersResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrdersResponseCopyWith<_$_OrdersResponse> get copyWith =>
      __$$_OrdersResponseCopyWithImpl<_$_OrdersResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrdersResponseToJson(
      this,
    );
  }
}

abstract class _OrdersResponse implements OrdersResponse {
  const factory _OrdersResponse(
      {@JsonKey() required final List<OrderModel> data}) = _$_OrdersResponse;

  factory _OrdersResponse.fromJson(Map<String, dynamic> json) =
      _$_OrdersResponse.fromJson;

  @override
  @JsonKey()
  List<OrderModel> get data;
  @override
  @JsonKey(ignore: true)
  _$$_OrdersResponseCopyWith<_$_OrdersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
