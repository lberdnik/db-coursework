// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'carriages_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CarriagesResponse _$CarriagesResponseFromJson(Map<String, dynamic> json) {
  return _CarriagesResponse.fromJson(json);
}

/// @nodoc
mixin _$CarriagesResponse {
  List<CarriageModel> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarriagesResponseCopyWith<CarriagesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarriagesResponseCopyWith<$Res> {
  factory $CarriagesResponseCopyWith(
          CarriagesResponse value, $Res Function(CarriagesResponse) then) =
      _$CarriagesResponseCopyWithImpl<$Res, CarriagesResponse>;
  @useResult
  $Res call({List<CarriageModel> data});
}

/// @nodoc
class _$CarriagesResponseCopyWithImpl<$Res, $Val extends CarriagesResponse>
    implements $CarriagesResponseCopyWith<$Res> {
  _$CarriagesResponseCopyWithImpl(this._value, this._then);

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
              as List<CarriageModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CarriagesResponseCopyWith<$Res>
    implements $CarriagesResponseCopyWith<$Res> {
  factory _$$_CarriagesResponseCopyWith(_$_CarriagesResponse value,
          $Res Function(_$_CarriagesResponse) then) =
      __$$_CarriagesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CarriageModel> data});
}

/// @nodoc
class __$$_CarriagesResponseCopyWithImpl<$Res>
    extends _$CarriagesResponseCopyWithImpl<$Res, _$_CarriagesResponse>
    implements _$$_CarriagesResponseCopyWith<$Res> {
  __$$_CarriagesResponseCopyWithImpl(
      _$_CarriagesResponse _value, $Res Function(_$_CarriagesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_CarriagesResponse(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CarriageModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CarriagesResponse implements _CarriagesResponse {
  const _$_CarriagesResponse({required final List<CarriageModel> data})
      : _data = data;

  factory _$_CarriagesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CarriagesResponseFromJson(json);

  final List<CarriageModel> _data;
  @override
  List<CarriageModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CarriagesResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarriagesResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarriagesResponseCopyWith<_$_CarriagesResponse> get copyWith =>
      __$$_CarriagesResponseCopyWithImpl<_$_CarriagesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarriagesResponseToJson(
      this,
    );
  }
}

abstract class _CarriagesResponse implements CarriagesResponse {
  const factory _CarriagesResponse({required final List<CarriageModel> data}) =
      _$_CarriagesResponse;

  factory _CarriagesResponse.fromJson(Map<String, dynamic> json) =
      _$_CarriagesResponse.fromJson;

  @override
  List<CarriageModel> get data;
  @override
  @JsonKey(ignore: true)
  _$$_CarriagesResponseCopyWith<_$_CarriagesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
