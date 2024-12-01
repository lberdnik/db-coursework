// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tickets_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TicketsRequest _$TicketsRequestFromJson(Map<String, dynamic> json) {
  return _TicketsRequest.fromJson(json);
}

/// @nodoc
mixin _$TicketsRequest {
  int get departurePoint => throw _privateConstructorUsedError;
  int get arrivalPoint => throw _privateConstructorUsedError;
  int get carriage => throw _privateConstructorUsedError;
  int get seatNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketsRequestCopyWith<TicketsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketsRequestCopyWith<$Res> {
  factory $TicketsRequestCopyWith(
          TicketsRequest value, $Res Function(TicketsRequest) then) =
      _$TicketsRequestCopyWithImpl<$Res, TicketsRequest>;
  @useResult
  $Res call(
      {int departurePoint, int arrivalPoint, int carriage, int seatNumber});
}

/// @nodoc
class _$TicketsRequestCopyWithImpl<$Res, $Val extends TicketsRequest>
    implements $TicketsRequestCopyWith<$Res> {
  _$TicketsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departurePoint = null,
    Object? arrivalPoint = null,
    Object? carriage = null,
    Object? seatNumber = null,
  }) {
    return _then(_value.copyWith(
      departurePoint: null == departurePoint
          ? _value.departurePoint
          : departurePoint // ignore: cast_nullable_to_non_nullable
              as int,
      arrivalPoint: null == arrivalPoint
          ? _value.arrivalPoint
          : arrivalPoint // ignore: cast_nullable_to_non_nullable
              as int,
      carriage: null == carriage
          ? _value.carriage
          : carriage // ignore: cast_nullable_to_non_nullable
              as int,
      seatNumber: null == seatNumber
          ? _value.seatNumber
          : seatNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TicketsRequestCopyWith<$Res>
    implements $TicketsRequestCopyWith<$Res> {
  factory _$$_TicketsRequestCopyWith(
          _$_TicketsRequest value, $Res Function(_$_TicketsRequest) then) =
      __$$_TicketsRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int departurePoint, int arrivalPoint, int carriage, int seatNumber});
}

/// @nodoc
class __$$_TicketsRequestCopyWithImpl<$Res>
    extends _$TicketsRequestCopyWithImpl<$Res, _$_TicketsRequest>
    implements _$$_TicketsRequestCopyWith<$Res> {
  __$$_TicketsRequestCopyWithImpl(
      _$_TicketsRequest _value, $Res Function(_$_TicketsRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departurePoint = null,
    Object? arrivalPoint = null,
    Object? carriage = null,
    Object? seatNumber = null,
  }) {
    return _then(_$_TicketsRequest(
      departurePoint: null == departurePoint
          ? _value.departurePoint
          : departurePoint // ignore: cast_nullable_to_non_nullable
              as int,
      arrivalPoint: null == arrivalPoint
          ? _value.arrivalPoint
          : arrivalPoint // ignore: cast_nullable_to_non_nullable
              as int,
      carriage: null == carriage
          ? _value.carriage
          : carriage // ignore: cast_nullable_to_non_nullable
              as int,
      seatNumber: null == seatNumber
          ? _value.seatNumber
          : seatNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TicketsRequest implements _TicketsRequest {
  const _$_TicketsRequest(
      {required this.departurePoint,
      required this.arrivalPoint,
      required this.carriage,
      required this.seatNumber});

  factory _$_TicketsRequest.fromJson(Map<String, dynamic> json) =>
      _$$_TicketsRequestFromJson(json);

  @override
  final int departurePoint;
  @override
  final int arrivalPoint;
  @override
  final int carriage;
  @override
  final int seatNumber;

  @override
  String toString() {
    return 'TicketsRequest(departurePoint: $departurePoint, arrivalPoint: $arrivalPoint, carriage: $carriage, seatNumber: $seatNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketsRequest &&
            (identical(other.departurePoint, departurePoint) ||
                other.departurePoint == departurePoint) &&
            (identical(other.arrivalPoint, arrivalPoint) ||
                other.arrivalPoint == arrivalPoint) &&
            (identical(other.carriage, carriage) ||
                other.carriage == carriage) &&
            (identical(other.seatNumber, seatNumber) ||
                other.seatNumber == seatNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, departurePoint, arrivalPoint, carriage, seatNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketsRequestCopyWith<_$_TicketsRequest> get copyWith =>
      __$$_TicketsRequestCopyWithImpl<_$_TicketsRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TicketsRequestToJson(
      this,
    );
  }
}

abstract class _TicketsRequest implements TicketsRequest {
  const factory _TicketsRequest(
      {required final int departurePoint,
      required final int arrivalPoint,
      required final int carriage,
      required final int seatNumber}) = _$_TicketsRequest;

  factory _TicketsRequest.fromJson(Map<String, dynamic> json) =
      _$_TicketsRequest.fromJson;

  @override
  int get departurePoint;
  @override
  int get arrivalPoint;
  @override
  int get carriage;
  @override
  int get seatNumber;
  @override
  @JsonKey(ignore: true)
  _$$_TicketsRequestCopyWith<_$_TicketsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
