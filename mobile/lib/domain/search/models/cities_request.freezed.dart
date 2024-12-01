// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cities_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CitiesRequest _$CitiesRequestFromJson(Map<String, dynamic> json) {
  return _CitiesRuquest.fromJson(json);
}

/// @nodoc
mixin _$CitiesRequest {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitiesRequestCopyWith<$Res> {
  factory $CitiesRequestCopyWith(
          CitiesRequest value, $Res Function(CitiesRequest) then) =
      _$CitiesRequestCopyWithImpl<$Res, CitiesRequest>;
}

/// @nodoc
class _$CitiesRequestCopyWithImpl<$Res, $Val extends CitiesRequest>
    implements $CitiesRequestCopyWith<$Res> {
  _$CitiesRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CitiesRuquestCopyWith<$Res> {
  factory _$$_CitiesRuquestCopyWith(
          _$_CitiesRuquest value, $Res Function(_$_CitiesRuquest) then) =
      __$$_CitiesRuquestCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CitiesRuquestCopyWithImpl<$Res>
    extends _$CitiesRequestCopyWithImpl<$Res, _$_CitiesRuquest>
    implements _$$_CitiesRuquestCopyWith<$Res> {
  __$$_CitiesRuquestCopyWithImpl(
      _$_CitiesRuquest _value, $Res Function(_$_CitiesRuquest) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_CitiesRuquest implements _CitiesRuquest {
  const _$_CitiesRuquest();

  factory _$_CitiesRuquest.fromJson(Map<String, dynamic> json) =>
      _$$_CitiesRuquestFromJson(json);

  @override
  String toString() {
    return 'CitiesRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CitiesRuquest);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_CitiesRuquestToJson(
      this,
    );
  }
}

abstract class _CitiesRuquest implements CitiesRequest {
  const factory _CitiesRuquest() = _$_CitiesRuquest;

  factory _CitiesRuquest.fromJson(Map<String, dynamic> json) =
      _$_CitiesRuquest.fromJson;
}
