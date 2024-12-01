// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discounts_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DiscountResponse _$DiscountResponseFromJson(Map<String, dynamic> json) {
  return _DiscountResponse.fromJson(json);
}

/// @nodoc
mixin _$DiscountResponse {
  List<DiscountModel> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiscountResponseCopyWith<DiscountResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountResponseCopyWith<$Res> {
  factory $DiscountResponseCopyWith(
          DiscountResponse value, $Res Function(DiscountResponse) then) =
      _$DiscountResponseCopyWithImpl<$Res, DiscountResponse>;
  @useResult
  $Res call({List<DiscountModel> data});
}

/// @nodoc
class _$DiscountResponseCopyWithImpl<$Res, $Val extends DiscountResponse>
    implements $DiscountResponseCopyWith<$Res> {
  _$DiscountResponseCopyWithImpl(this._value, this._then);

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
              as List<DiscountModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DiscountResponseCopyWith<$Res>
    implements $DiscountResponseCopyWith<$Res> {
  factory _$$_DiscountResponseCopyWith(
          _$_DiscountResponse value, $Res Function(_$_DiscountResponse) then) =
      __$$_DiscountResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DiscountModel> data});
}

/// @nodoc
class __$$_DiscountResponseCopyWithImpl<$Res>
    extends _$DiscountResponseCopyWithImpl<$Res, _$_DiscountResponse>
    implements _$$_DiscountResponseCopyWith<$Res> {
  __$$_DiscountResponseCopyWithImpl(
      _$_DiscountResponse _value, $Res Function(_$_DiscountResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_DiscountResponse(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DiscountModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiscountResponse implements _DiscountResponse {
  const _$_DiscountResponse({required final List<DiscountModel> data})
      : _data = data;

  factory _$_DiscountResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DiscountResponseFromJson(json);

  final List<DiscountModel> _data;
  @override
  List<DiscountModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'DiscountResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiscountResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiscountResponseCopyWith<_$_DiscountResponse> get copyWith =>
      __$$_DiscountResponseCopyWithImpl<_$_DiscountResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiscountResponseToJson(
      this,
    );
  }
}

abstract class _DiscountResponse implements DiscountResponse {
  const factory _DiscountResponse({required final List<DiscountModel> data}) =
      _$_DiscountResponse;

  factory _DiscountResponse.fromJson(Map<String, dynamic> json) =
      _$_DiscountResponse.fromJson;

  @override
  List<DiscountModel> get data;
  @override
  @JsonKey(ignore: true)
  _$$_DiscountResponseCopyWith<_$_DiscountResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
