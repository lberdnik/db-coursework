// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentRequest _$PaymentRequestFromJson(Map<String, dynamic> json) {
  return _PaymentRequest.fromJson(json);
}

/// @nodoc
mixin _$PaymentRequest {
  int get id => throw _privateConstructorUsedError;
  int? get discountId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentRequestCopyWith<PaymentRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentRequestCopyWith<$Res> {
  factory $PaymentRequestCopyWith(
          PaymentRequest value, $Res Function(PaymentRequest) then) =
      _$PaymentRequestCopyWithImpl<$Res, PaymentRequest>;
  @useResult
  $Res call({int id, int? discountId});
}

/// @nodoc
class _$PaymentRequestCopyWithImpl<$Res, $Val extends PaymentRequest>
    implements $PaymentRequestCopyWith<$Res> {
  _$PaymentRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? discountId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      discountId: freezed == discountId
          ? _value.discountId
          : discountId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentRequestCopyWith<$Res>
    implements $PaymentRequestCopyWith<$Res> {
  factory _$$_PaymentRequestCopyWith(
          _$_PaymentRequest value, $Res Function(_$_PaymentRequest) then) =
      __$$_PaymentRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int? discountId});
}

/// @nodoc
class __$$_PaymentRequestCopyWithImpl<$Res>
    extends _$PaymentRequestCopyWithImpl<$Res, _$_PaymentRequest>
    implements _$$_PaymentRequestCopyWith<$Res> {
  __$$_PaymentRequestCopyWithImpl(
      _$_PaymentRequest _value, $Res Function(_$_PaymentRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? discountId = freezed,
  }) {
    return _then(_$_PaymentRequest(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      discountId: freezed == discountId
          ? _value.discountId
          : discountId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentRequest implements _PaymentRequest {
  const _$_PaymentRequest({required this.id, required this.discountId});

  factory _$_PaymentRequest.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentRequestFromJson(json);

  @override
  final int id;
  @override
  final int? discountId;

  @override
  String toString() {
    return 'PaymentRequest(id: $id, discountId: $discountId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentRequest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.discountId, discountId) ||
                other.discountId == discountId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, discountId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentRequestCopyWith<_$_PaymentRequest> get copyWith =>
      __$$_PaymentRequestCopyWithImpl<_$_PaymentRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentRequestToJson(
      this,
    );
  }
}

abstract class _PaymentRequest implements PaymentRequest {
  const factory _PaymentRequest(
      {required final int id,
      required final int? discountId}) = _$_PaymentRequest;

  factory _PaymentRequest.fromJson(Map<String, dynamic> json) =
      _$_PaymentRequest.fromJson;

  @override
  int get id;
  @override
  int? get discountId;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentRequestCopyWith<_$_PaymentRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
