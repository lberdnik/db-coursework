// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentResponse _$PaymentResponseFromJson(Map<String, dynamic> json) {
  return _OrdersRequest.fromJson(json);
}

/// @nodoc
mixin _$PaymentResponse {
  String get clientSecret => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentResponseCopyWith<PaymentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentResponseCopyWith<$Res> {
  factory $PaymentResponseCopyWith(
          PaymentResponse value, $Res Function(PaymentResponse) then) =
      _$PaymentResponseCopyWithImpl<$Res, PaymentResponse>;
  @useResult
  $Res call({String clientSecret});
}

/// @nodoc
class _$PaymentResponseCopyWithImpl<$Res, $Val extends PaymentResponse>
    implements $PaymentResponseCopyWith<$Res> {
  _$PaymentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientSecret = null,
  }) {
    return _then(_value.copyWith(
      clientSecret: null == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrdersRequestCopyWith<$Res>
    implements $PaymentResponseCopyWith<$Res> {
  factory _$$_OrdersRequestCopyWith(
          _$_OrdersRequest value, $Res Function(_$_OrdersRequest) then) =
      __$$_OrdersRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String clientSecret});
}

/// @nodoc
class __$$_OrdersRequestCopyWithImpl<$Res>
    extends _$PaymentResponseCopyWithImpl<$Res, _$_OrdersRequest>
    implements _$$_OrdersRequestCopyWith<$Res> {
  __$$_OrdersRequestCopyWithImpl(
      _$_OrdersRequest _value, $Res Function(_$_OrdersRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientSecret = null,
  }) {
    return _then(_$_OrdersRequest(
      clientSecret: null == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrdersRequest implements _OrdersRequest {
  const _$_OrdersRequest({required this.clientSecret});

  factory _$_OrdersRequest.fromJson(Map<String, dynamic> json) =>
      _$$_OrdersRequestFromJson(json);

  @override
  final String clientSecret;

  @override
  String toString() {
    return 'PaymentResponse(clientSecret: $clientSecret)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrdersRequest &&
            (identical(other.clientSecret, clientSecret) ||
                other.clientSecret == clientSecret));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, clientSecret);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrdersRequestCopyWith<_$_OrdersRequest> get copyWith =>
      __$$_OrdersRequestCopyWithImpl<_$_OrdersRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrdersRequestToJson(
      this,
    );
  }
}

abstract class _OrdersRequest implements PaymentResponse {
  const factory _OrdersRequest({required final String clientSecret}) =
      _$_OrdersRequest;

  factory _OrdersRequest.fromJson(Map<String, dynamic> json) =
      _$_OrdersRequest.fromJson;

  @override
  String get clientSecret;
  @override
  @JsonKey(ignore: true)
  _$$_OrdersRequestCopyWith<_$_OrdersRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
