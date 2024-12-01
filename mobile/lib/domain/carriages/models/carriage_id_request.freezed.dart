// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'carriage_id_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CarriageIdRequest _$CarriageIdRequestFromJson(Map<String, dynamic> json) {
  return _CarriageIdRequest.fromJson(json);
}

/// @nodoc
mixin _$CarriageIdRequest {
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarriageIdRequestCopyWith<CarriageIdRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarriageIdRequestCopyWith<$Res> {
  factory $CarriageIdRequestCopyWith(
          CarriageIdRequest value, $Res Function(CarriageIdRequest) then) =
      _$CarriageIdRequestCopyWithImpl<$Res, CarriageIdRequest>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$CarriageIdRequestCopyWithImpl<$Res, $Val extends CarriageIdRequest>
    implements $CarriageIdRequestCopyWith<$Res> {
  _$CarriageIdRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$_CarriageIdRequestCopyWith<$Res>
    implements $CarriageIdRequestCopyWith<$Res> {
  factory _$$_CarriageIdRequestCopyWith(_$_CarriageIdRequest value,
          $Res Function(_$_CarriageIdRequest) then) =
      __$$_CarriageIdRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_CarriageIdRequestCopyWithImpl<$Res>
    extends _$CarriageIdRequestCopyWithImpl<$Res, _$_CarriageIdRequest>
    implements _$$_CarriageIdRequestCopyWith<$Res> {
  __$$_CarriageIdRequestCopyWithImpl(
      _$_CarriageIdRequest _value, $Res Function(_$_CarriageIdRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_CarriageIdRequest(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CarriageIdRequest implements _CarriageIdRequest {
  const _$_CarriageIdRequest({required this.id});

  factory _$_CarriageIdRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CarriageIdRequestFromJson(json);

  @override
  final int id;

  @override
  String toString() {
    return 'CarriageIdRequest(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarriageIdRequest &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarriageIdRequestCopyWith<_$_CarriageIdRequest> get copyWith =>
      __$$_CarriageIdRequestCopyWithImpl<_$_CarriageIdRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarriageIdRequestToJson(
      this,
    );
  }
}

abstract class _CarriageIdRequest implements CarriageIdRequest {
  const factory _CarriageIdRequest({required final int id}) =
      _$_CarriageIdRequest;

  factory _CarriageIdRequest.fromJson(Map<String, dynamic> json) =
      _$_CarriageIdRequest.fromJson;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_CarriageIdRequestCopyWith<_$_CarriageIdRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
