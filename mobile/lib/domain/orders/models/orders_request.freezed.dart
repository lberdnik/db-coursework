// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrdersRequest _$OrdersRequestFromJson(Map<String, dynamic> json) {
  return _OrdersRequest.fromJson(json);
}

/// @nodoc
mixin _$OrdersRequest {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersRequestCopyWith<$Res> {
  factory $OrdersRequestCopyWith(
          OrdersRequest value, $Res Function(OrdersRequest) then) =
      _$OrdersRequestCopyWithImpl<$Res, OrdersRequest>;
}

/// @nodoc
class _$OrdersRequestCopyWithImpl<$Res, $Val extends OrdersRequest>
    implements $OrdersRequestCopyWith<$Res> {
  _$OrdersRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_OrdersRequestCopyWith<$Res> {
  factory _$$_OrdersRequestCopyWith(
          _$_OrdersRequest value, $Res Function(_$_OrdersRequest) then) =
      __$$_OrdersRequestCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OrdersRequestCopyWithImpl<$Res>
    extends _$OrdersRequestCopyWithImpl<$Res, _$_OrdersRequest>
    implements _$$_OrdersRequestCopyWith<$Res> {
  __$$_OrdersRequestCopyWithImpl(
      _$_OrdersRequest _value, $Res Function(_$_OrdersRequest) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_OrdersRequest implements _OrdersRequest {
  const _$_OrdersRequest();

  factory _$_OrdersRequest.fromJson(Map<String, dynamic> json) =>
      _$$_OrdersRequestFromJson(json);

  @override
  String toString() {
    return 'OrdersRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OrdersRequest);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrdersRequestToJson(
      this,
    );
  }
}

abstract class _OrdersRequest implements OrdersRequest {
  const factory _OrdersRequest() = _$_OrdersRequest;

  factory _OrdersRequest.fromJson(Map<String, dynamic> json) =
      _$_OrdersRequest.fromJson;
}
