// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'carriages_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CarriagesRequest _$CarriagesRequestFromJson(Map<String, dynamic> json) {
  return _CarriagesRequest.fromJson(json);
}

/// @nodoc
mixin _$CarriagesRequest {
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarriagesRequestCopyWith<CarriagesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarriagesRequestCopyWith<$Res> {
  factory $CarriagesRequestCopyWith(
          CarriagesRequest value, $Res Function(CarriagesRequest) then) =
      _$CarriagesRequestCopyWithImpl<$Res, CarriagesRequest>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$CarriagesRequestCopyWithImpl<$Res, $Val extends CarriagesRequest>
    implements $CarriagesRequestCopyWith<$Res> {
  _$CarriagesRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CarriagesRequestCopyWith<$Res>
    implements $CarriagesRequestCopyWith<$Res> {
  factory _$$_CarriagesRequestCopyWith(
          _$_CarriagesRequest value, $Res Function(_$_CarriagesRequest) then) =
      __$$_CarriagesRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_CarriagesRequestCopyWithImpl<$Res>
    extends _$CarriagesRequestCopyWithImpl<$Res, _$_CarriagesRequest>
    implements _$$_CarriagesRequestCopyWith<$Res> {
  __$$_CarriagesRequestCopyWithImpl(
      _$_CarriagesRequest _value, $Res Function(_$_CarriagesRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_CarriagesRequest(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CarriagesRequest implements _CarriagesRequest {
  const _$_CarriagesRequest({required this.id});

  factory _$_CarriagesRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CarriagesRequestFromJson(json);

  @override
  final int id;

  @override
  String toString() {
    return 'CarriagesRequest(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarriagesRequest &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarriagesRequestCopyWith<_$_CarriagesRequest> get copyWith =>
      __$$_CarriagesRequestCopyWithImpl<_$_CarriagesRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarriagesRequestToJson(
      this,
    );
  }
}

abstract class _CarriagesRequest implements CarriagesRequest {
  const factory _CarriagesRequest({required final int id}) =
      _$_CarriagesRequest;

  factory _CarriagesRequest.fromJson(Map<String, dynamic> json) =
      _$_CarriagesRequest.fromJson;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_CarriagesRequestCopyWith<_$_CarriagesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
