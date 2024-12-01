// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'routes_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoutesResponse _$RoutesResponseFromJson(Map<String, dynamic> json) {
  return _RoutesResponse.fromJson(json);
}

/// @nodoc
mixin _$RoutesResponse {
  List<RouteModel> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoutesResponseCopyWith<RoutesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutesResponseCopyWith<$Res> {
  factory $RoutesResponseCopyWith(
          RoutesResponse value, $Res Function(RoutesResponse) then) =
      _$RoutesResponseCopyWithImpl<$Res, RoutesResponse>;
  @useResult
  $Res call({List<RouteModel> data});
}

/// @nodoc
class _$RoutesResponseCopyWithImpl<$Res, $Val extends RoutesResponse>
    implements $RoutesResponseCopyWith<$Res> {
  _$RoutesResponseCopyWithImpl(this._value, this._then);

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
              as List<RouteModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoutesResponseCopyWith<$Res>
    implements $RoutesResponseCopyWith<$Res> {
  factory _$$_RoutesResponseCopyWith(
          _$_RoutesResponse value, $Res Function(_$_RoutesResponse) then) =
      __$$_RoutesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RouteModel> data});
}

/// @nodoc
class __$$_RoutesResponseCopyWithImpl<$Res>
    extends _$RoutesResponseCopyWithImpl<$Res, _$_RoutesResponse>
    implements _$$_RoutesResponseCopyWith<$Res> {
  __$$_RoutesResponseCopyWithImpl(
      _$_RoutesResponse _value, $Res Function(_$_RoutesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_RoutesResponse(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<RouteModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoutesResponse implements _RoutesResponse {
  const _$_RoutesResponse({required final List<RouteModel> data})
      : _data = data;

  factory _$_RoutesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RoutesResponseFromJson(json);

  final List<RouteModel> _data;
  @override
  List<RouteModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'RoutesResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoutesResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoutesResponseCopyWith<_$_RoutesResponse> get copyWith =>
      __$$_RoutesResponseCopyWithImpl<_$_RoutesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoutesResponseToJson(
      this,
    );
  }
}

abstract class _RoutesResponse implements RoutesResponse {
  const factory _RoutesResponse({required final List<RouteModel> data}) =
      _$_RoutesResponse;

  factory _RoutesResponse.fromJson(Map<String, dynamic> json) =
      _$_RoutesResponse.fromJson;

  @override
  List<RouteModel> get data;
  @override
  @JsonKey(ignore: true)
  _$$_RoutesResponseCopyWith<_$_RoutesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
