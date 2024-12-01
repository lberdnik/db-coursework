// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'routes_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoutesRequest _$RoutesRequestFromJson(Map<String, dynamic> json) {
  return _RoutesRequest.fromJson(json);
}

/// @nodoc
mixin _$RoutesRequest {
  int get departureCity => throw _privateConstructorUsedError;
  int get arrivalCity => throw _privateConstructorUsedError;
  String get departureDay => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoutesRequestCopyWith<RoutesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutesRequestCopyWith<$Res> {
  factory $RoutesRequestCopyWith(
          RoutesRequest value, $Res Function(RoutesRequest) then) =
      _$RoutesRequestCopyWithImpl<$Res, RoutesRequest>;
  @useResult
  $Res call({int departureCity, int arrivalCity, String departureDay});
}

/// @nodoc
class _$RoutesRequestCopyWithImpl<$Res, $Val extends RoutesRequest>
    implements $RoutesRequestCopyWith<$Res> {
  _$RoutesRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departureCity = null,
    Object? arrivalCity = null,
    Object? departureDay = null,
  }) {
    return _then(_value.copyWith(
      departureCity: null == departureCity
          ? _value.departureCity
          : departureCity // ignore: cast_nullable_to_non_nullable
              as int,
      arrivalCity: null == arrivalCity
          ? _value.arrivalCity
          : arrivalCity // ignore: cast_nullable_to_non_nullable
              as int,
      departureDay: null == departureDay
          ? _value.departureDay
          : departureDay // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoutesRequestCopyWith<$Res>
    implements $RoutesRequestCopyWith<$Res> {
  factory _$$_RoutesRequestCopyWith(
          _$_RoutesRequest value, $Res Function(_$_RoutesRequest) then) =
      __$$_RoutesRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int departureCity, int arrivalCity, String departureDay});
}

/// @nodoc
class __$$_RoutesRequestCopyWithImpl<$Res>
    extends _$RoutesRequestCopyWithImpl<$Res, _$_RoutesRequest>
    implements _$$_RoutesRequestCopyWith<$Res> {
  __$$_RoutesRequestCopyWithImpl(
      _$_RoutesRequest _value, $Res Function(_$_RoutesRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departureCity = null,
    Object? arrivalCity = null,
    Object? departureDay = null,
  }) {
    return _then(_$_RoutesRequest(
      departureCity: null == departureCity
          ? _value.departureCity
          : departureCity // ignore: cast_nullable_to_non_nullable
              as int,
      arrivalCity: null == arrivalCity
          ? _value.arrivalCity
          : arrivalCity // ignore: cast_nullable_to_non_nullable
              as int,
      departureDay: null == departureDay
          ? _value.departureDay
          : departureDay // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoutesRequest implements _RoutesRequest {
  const _$_RoutesRequest(
      {required this.departureCity,
      required this.arrivalCity,
      required this.departureDay});

  factory _$_RoutesRequest.fromJson(Map<String, dynamic> json) =>
      _$$_RoutesRequestFromJson(json);

  @override
  final int departureCity;
  @override
  final int arrivalCity;
  @override
  final String departureDay;

  @override
  String toString() {
    return 'RoutesRequest(departureCity: $departureCity, arrivalCity: $arrivalCity, departureDay: $departureDay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoutesRequest &&
            (identical(other.departureCity, departureCity) ||
                other.departureCity == departureCity) &&
            (identical(other.arrivalCity, arrivalCity) ||
                other.arrivalCity == arrivalCity) &&
            (identical(other.departureDay, departureDay) ||
                other.departureDay == departureDay));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, departureCity, arrivalCity, departureDay);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoutesRequestCopyWith<_$_RoutesRequest> get copyWith =>
      __$$_RoutesRequestCopyWithImpl<_$_RoutesRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoutesRequestToJson(
      this,
    );
  }
}

abstract class _RoutesRequest implements RoutesRequest {
  const factory _RoutesRequest(
      {required final int departureCity,
      required final int arrivalCity,
      required final String departureDay}) = _$_RoutesRequest;

  factory _RoutesRequest.fromJson(Map<String, dynamic> json) =
      _$_RoutesRequest.fromJson;

  @override
  int get departureCity;
  @override
  int get arrivalCity;
  @override
  String get departureDay;
  @override
  @JsonKey(ignore: true)
  _$$_RoutesRequestCopyWith<_$_RoutesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
