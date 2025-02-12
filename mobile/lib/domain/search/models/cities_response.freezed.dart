// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cities_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CitiesResponse _$CitiesResponseFromJson(Map<String, dynamic> json) {
  return _CitiesResponse.fromJson(json);
}

/// @nodoc
mixin _$CitiesResponse {
  @JsonKey()
  List<CityModel> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CitiesResponseCopyWith<CitiesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitiesResponseCopyWith<$Res> {
  factory $CitiesResponseCopyWith(
          CitiesResponse value, $Res Function(CitiesResponse) then) =
      _$CitiesResponseCopyWithImpl<$Res, CitiesResponse>;
  @useResult
  $Res call({@JsonKey() List<CityModel> data});
}

/// @nodoc
class _$CitiesResponseCopyWithImpl<$Res, $Val extends CitiesResponse>
    implements $CitiesResponseCopyWith<$Res> {
  _$CitiesResponseCopyWithImpl(this._value, this._then);

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
              as List<CityModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CitiesResponseCopyWith<$Res>
    implements $CitiesResponseCopyWith<$Res> {
  factory _$$_CitiesResponseCopyWith(
          _$_CitiesResponse value, $Res Function(_$_CitiesResponse) then) =
      __$$_CitiesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey() List<CityModel> data});
}

/// @nodoc
class __$$_CitiesResponseCopyWithImpl<$Res>
    extends _$CitiesResponseCopyWithImpl<$Res, _$_CitiesResponse>
    implements _$$_CitiesResponseCopyWith<$Res> {
  __$$_CitiesResponseCopyWithImpl(
      _$_CitiesResponse _value, $Res Function(_$_CitiesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_CitiesResponse(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CityModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CitiesResponse implements _CitiesResponse {
  const _$_CitiesResponse({@JsonKey() required final List<CityModel> data})
      : _data = data;

  factory _$_CitiesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CitiesResponseFromJson(json);

  final List<CityModel> _data;
  @override
  @JsonKey()
  List<CityModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CitiesResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CitiesResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CitiesResponseCopyWith<_$_CitiesResponse> get copyWith =>
      __$$_CitiesResponseCopyWithImpl<_$_CitiesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CitiesResponseToJson(
      this,
    );
  }
}

abstract class _CitiesResponse implements CitiesResponse {
  const factory _CitiesResponse(
      {@JsonKey() required final List<CityModel> data}) = _$_CitiesResponse;

  factory _CitiesResponse.fromJson(Map<String, dynamic> json) =
      _$_CitiesResponse.fromJson;

  @override
  @JsonKey()
  List<CityModel> get data;
  @override
  @JsonKey(ignore: true)
  _$$_CitiesResponseCopyWith<_$_CitiesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
