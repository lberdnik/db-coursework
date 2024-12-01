// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discounts_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DiscountsRequest _$DiscountsRequestFromJson(Map<String, dynamic> json) {
  return _DiscountsRequest.fromJson(json);
}

/// @nodoc
mixin _$DiscountsRequest {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountsRequestCopyWith<$Res> {
  factory $DiscountsRequestCopyWith(
          DiscountsRequest value, $Res Function(DiscountsRequest) then) =
      _$DiscountsRequestCopyWithImpl<$Res, DiscountsRequest>;
}

/// @nodoc
class _$DiscountsRequestCopyWithImpl<$Res, $Val extends DiscountsRequest>
    implements $DiscountsRequestCopyWith<$Res> {
  _$DiscountsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_DiscountsRequestCopyWith<$Res> {
  factory _$$_DiscountsRequestCopyWith(
          _$_DiscountsRequest value, $Res Function(_$_DiscountsRequest) then) =
      __$$_DiscountsRequestCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DiscountsRequestCopyWithImpl<$Res>
    extends _$DiscountsRequestCopyWithImpl<$Res, _$_DiscountsRequest>
    implements _$$_DiscountsRequestCopyWith<$Res> {
  __$$_DiscountsRequestCopyWithImpl(
      _$_DiscountsRequest _value, $Res Function(_$_DiscountsRequest) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_DiscountsRequest implements _DiscountsRequest {
  const _$_DiscountsRequest();

  factory _$_DiscountsRequest.fromJson(Map<String, dynamic> json) =>
      _$$_DiscountsRequestFromJson(json);

  @override
  String toString() {
    return 'DiscountsRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DiscountsRequest);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiscountsRequestToJson(
      this,
    );
  }
}

abstract class _DiscountsRequest implements DiscountsRequest {
  const factory _DiscountsRequest() = _$_DiscountsRequest;

  factory _DiscountsRequest.fromJson(Map<String, dynamic> json) =
      _$_DiscountsRequest.fromJson;
}
