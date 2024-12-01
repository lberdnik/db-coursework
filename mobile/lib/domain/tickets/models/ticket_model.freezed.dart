// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TicketModel _$TicketModelFromJson(Map<String, dynamic> json) {
  return _TicketModel.fromJson(json);
}

/// @nodoc
mixin _$TicketModel {
  int get id => throw _privateConstructorUsedError;
  int get carriage => throw _privateConstructorUsedError;
  int get seatNumber => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  ArrivalPointModel get departurePoint => throw _privateConstructorUsedError;
  ArrivalPointModel get arrivalPoint => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketModelCopyWith<TicketModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketModelCopyWith<$Res> {
  factory $TicketModelCopyWith(
          TicketModel value, $Res Function(TicketModel) then) =
      _$TicketModelCopyWithImpl<$Res, TicketModel>;
  @useResult
  $Res call(
      {int id,
      int carriage,
      int seatNumber,
      String price,
      ArrivalPointModel departurePoint,
      ArrivalPointModel arrivalPoint});

  $ArrivalPointModelCopyWith<$Res> get departurePoint;
  $ArrivalPointModelCopyWith<$Res> get arrivalPoint;
}

/// @nodoc
class _$TicketModelCopyWithImpl<$Res, $Val extends TicketModel>
    implements $TicketModelCopyWith<$Res> {
  _$TicketModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? carriage = null,
    Object? seatNumber = null,
    Object? price = null,
    Object? departurePoint = null,
    Object? arrivalPoint = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      carriage: null == carriage
          ? _value.carriage
          : carriage // ignore: cast_nullable_to_non_nullable
              as int,
      seatNumber: null == seatNumber
          ? _value.seatNumber
          : seatNumber // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      departurePoint: null == departurePoint
          ? _value.departurePoint
          : departurePoint // ignore: cast_nullable_to_non_nullable
              as ArrivalPointModel,
      arrivalPoint: null == arrivalPoint
          ? _value.arrivalPoint
          : arrivalPoint // ignore: cast_nullable_to_non_nullable
              as ArrivalPointModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ArrivalPointModelCopyWith<$Res> get departurePoint {
    return $ArrivalPointModelCopyWith<$Res>(_value.departurePoint, (value) {
      return _then(_value.copyWith(departurePoint: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ArrivalPointModelCopyWith<$Res> get arrivalPoint {
    return $ArrivalPointModelCopyWith<$Res>(_value.arrivalPoint, (value) {
      return _then(_value.copyWith(arrivalPoint: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TicketModelCopyWith<$Res>
    implements $TicketModelCopyWith<$Res> {
  factory _$$_TicketModelCopyWith(
          _$_TicketModel value, $Res Function(_$_TicketModel) then) =
      __$$_TicketModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int carriage,
      int seatNumber,
      String price,
      ArrivalPointModel departurePoint,
      ArrivalPointModel arrivalPoint});

  @override
  $ArrivalPointModelCopyWith<$Res> get departurePoint;
  @override
  $ArrivalPointModelCopyWith<$Res> get arrivalPoint;
}

/// @nodoc
class __$$_TicketModelCopyWithImpl<$Res>
    extends _$TicketModelCopyWithImpl<$Res, _$_TicketModel>
    implements _$$_TicketModelCopyWith<$Res> {
  __$$_TicketModelCopyWithImpl(
      _$_TicketModel _value, $Res Function(_$_TicketModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? carriage = null,
    Object? seatNumber = null,
    Object? price = null,
    Object? departurePoint = null,
    Object? arrivalPoint = null,
  }) {
    return _then(_$_TicketModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      carriage: null == carriage
          ? _value.carriage
          : carriage // ignore: cast_nullable_to_non_nullable
              as int,
      seatNumber: null == seatNumber
          ? _value.seatNumber
          : seatNumber // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      departurePoint: null == departurePoint
          ? _value.departurePoint
          : departurePoint // ignore: cast_nullable_to_non_nullable
              as ArrivalPointModel,
      arrivalPoint: null == arrivalPoint
          ? _value.arrivalPoint
          : arrivalPoint // ignore: cast_nullable_to_non_nullable
              as ArrivalPointModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TicketModel implements _TicketModel {
  const _$_TicketModel(
      {required this.id,
      required this.carriage,
      required this.seatNumber,
      required this.price,
      required this.departurePoint,
      required this.arrivalPoint});

  factory _$_TicketModel.fromJson(Map<String, dynamic> json) =>
      _$$_TicketModelFromJson(json);

  @override
  final int id;
  @override
  final int carriage;
  @override
  final int seatNumber;
  @override
  final String price;
  @override
  final ArrivalPointModel departurePoint;
  @override
  final ArrivalPointModel arrivalPoint;

  @override
  String toString() {
    return 'TicketModel(id: $id, carriage: $carriage, seatNumber: $seatNumber, price: $price, departurePoint: $departurePoint, arrivalPoint: $arrivalPoint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.carriage, carriage) ||
                other.carriage == carriage) &&
            (identical(other.seatNumber, seatNumber) ||
                other.seatNumber == seatNumber) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.departurePoint, departurePoint) ||
                other.departurePoint == departurePoint) &&
            (identical(other.arrivalPoint, arrivalPoint) ||
                other.arrivalPoint == arrivalPoint));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, carriage, seatNumber, price,
      departurePoint, arrivalPoint);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketModelCopyWith<_$_TicketModel> get copyWith =>
      __$$_TicketModelCopyWithImpl<_$_TicketModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TicketModelToJson(
      this,
    );
  }
}

abstract class _TicketModel implements TicketModel {
  const factory _TicketModel(
      {required final int id,
      required final int carriage,
      required final int seatNumber,
      required final String price,
      required final ArrivalPointModel departurePoint,
      required final ArrivalPointModel arrivalPoint}) = _$_TicketModel;

  factory _TicketModel.fromJson(Map<String, dynamic> json) =
      _$_TicketModel.fromJson;

  @override
  int get id;
  @override
  int get carriage;
  @override
  int get seatNumber;
  @override
  String get price;
  @override
  ArrivalPointModel get departurePoint;
  @override
  ArrivalPointModel get arrivalPoint;
  @override
  @JsonKey(ignore: true)
  _$$_TicketModelCopyWith<_$_TicketModel> get copyWith =>
      throw _privateConstructorUsedError;
}
