// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tickets_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TicketsResponse _$TicketsResponseFromJson(Map<String, dynamic> json) {
  return _TicketsResponse.fromJson(json);
}

/// @nodoc
mixin _$TicketsResponse {
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketsResponseCopyWith<TicketsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketsResponseCopyWith<$Res> {
  factory $TicketsResponseCopyWith(
          TicketsResponse value, $Res Function(TicketsResponse) then) =
      _$TicketsResponseCopyWithImpl<$Res, TicketsResponse>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$TicketsResponseCopyWithImpl<$Res, $Val extends TicketsResponse>
    implements $TicketsResponseCopyWith<$Res> {
  _$TicketsResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_TicketsResponseCopyWith<$Res>
    implements $TicketsResponseCopyWith<$Res> {
  factory _$$_TicketsResponseCopyWith(
          _$_TicketsResponse value, $Res Function(_$_TicketsResponse) then) =
      __$$_TicketsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_TicketsResponseCopyWithImpl<$Res>
    extends _$TicketsResponseCopyWithImpl<$Res, _$_TicketsResponse>
    implements _$$_TicketsResponseCopyWith<$Res> {
  __$$_TicketsResponseCopyWithImpl(
      _$_TicketsResponse _value, $Res Function(_$_TicketsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_TicketsResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TicketsResponse implements _TicketsResponse {
  const _$_TicketsResponse({required this.id});

  factory _$_TicketsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TicketsResponseFromJson(json);

  @override
  final int id;

  @override
  String toString() {
    return 'TicketsResponse(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketsResponse &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketsResponseCopyWith<_$_TicketsResponse> get copyWith =>
      __$$_TicketsResponseCopyWithImpl<_$_TicketsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TicketsResponseToJson(
      this,
    );
  }
}

abstract class _TicketsResponse implements TicketsResponse {
  const factory _TicketsResponse({required final int id}) = _$_TicketsResponse;

  factory _TicketsResponse.fromJson(Map<String, dynamic> json) =
      _$_TicketsResponse.fromJson;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_TicketsResponseCopyWith<_$_TicketsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
