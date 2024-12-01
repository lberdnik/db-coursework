// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'arrival_point_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArrivalPointModel _$ArrivalPointModelFromJson(Map<String, dynamic> json) {
  return _ArrivalPointModel.fromJson(json);
}

/// @nodoc
mixin _$ArrivalPointModel {
  int get id => throw _privateConstructorUsedError;
  String get arrivalCity => throw _privateConstructorUsedError;
  String get arrivalPlace => throw _privateConstructorUsedError;
  String? get arrivalTime => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArrivalPointModelCopyWith<ArrivalPointModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArrivalPointModelCopyWith<$Res> {
  factory $ArrivalPointModelCopyWith(
          ArrivalPointModel value, $Res Function(ArrivalPointModel) then) =
      _$ArrivalPointModelCopyWithImpl<$Res, ArrivalPointModel>;
  @useResult
  $Res call(
      {int id,
      String arrivalCity,
      String arrivalPlace,
      String? arrivalTime,
      String? price,
      int? order});
}

/// @nodoc
class _$ArrivalPointModelCopyWithImpl<$Res, $Val extends ArrivalPointModel>
    implements $ArrivalPointModelCopyWith<$Res> {
  _$ArrivalPointModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? arrivalCity = null,
    Object? arrivalPlace = null,
    Object? arrivalTime = freezed,
    Object? price = freezed,
    Object? order = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      arrivalCity: null == arrivalCity
          ? _value.arrivalCity
          : arrivalCity // ignore: cast_nullable_to_non_nullable
              as String,
      arrivalPlace: null == arrivalPlace
          ? _value.arrivalPlace
          : arrivalPlace // ignore: cast_nullable_to_non_nullable
              as String,
      arrivalTime: freezed == arrivalTime
          ? _value.arrivalTime
          : arrivalTime // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArrivalPointModelCopyWith<$Res>
    implements $ArrivalPointModelCopyWith<$Res> {
  factory _$$_ArrivalPointModelCopyWith(_$_ArrivalPointModel value,
          $Res Function(_$_ArrivalPointModel) then) =
      __$$_ArrivalPointModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String arrivalCity,
      String arrivalPlace,
      String? arrivalTime,
      String? price,
      int? order});
}

/// @nodoc
class __$$_ArrivalPointModelCopyWithImpl<$Res>
    extends _$ArrivalPointModelCopyWithImpl<$Res, _$_ArrivalPointModel>
    implements _$$_ArrivalPointModelCopyWith<$Res> {
  __$$_ArrivalPointModelCopyWithImpl(
      _$_ArrivalPointModel _value, $Res Function(_$_ArrivalPointModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? arrivalCity = null,
    Object? arrivalPlace = null,
    Object? arrivalTime = freezed,
    Object? price = freezed,
    Object? order = freezed,
  }) {
    return _then(_$_ArrivalPointModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      arrivalCity: null == arrivalCity
          ? _value.arrivalCity
          : arrivalCity // ignore: cast_nullable_to_non_nullable
              as String,
      arrivalPlace: null == arrivalPlace
          ? _value.arrivalPlace
          : arrivalPlace // ignore: cast_nullable_to_non_nullable
              as String,
      arrivalTime: freezed == arrivalTime
          ? _value.arrivalTime
          : arrivalTime // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArrivalPointModel implements _ArrivalPointModel {
  const _$_ArrivalPointModel(
      {required this.id,
      required this.arrivalCity,
      required this.arrivalPlace,
      this.arrivalTime,
      this.price,
      this.order});

  factory _$_ArrivalPointModel.fromJson(Map<String, dynamic> json) =>
      _$$_ArrivalPointModelFromJson(json);

  @override
  final int id;
  @override
  final String arrivalCity;
  @override
  final String arrivalPlace;
  @override
  final String? arrivalTime;
  @override
  final String? price;
  @override
  final int? order;

  @override
  String toString() {
    return 'ArrivalPointModel(id: $id, arrivalCity: $arrivalCity, arrivalPlace: $arrivalPlace, arrivalTime: $arrivalTime, price: $price, order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArrivalPointModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.arrivalCity, arrivalCity) ||
                other.arrivalCity == arrivalCity) &&
            (identical(other.arrivalPlace, arrivalPlace) ||
                other.arrivalPlace == arrivalPlace) &&
            (identical(other.arrivalTime, arrivalTime) ||
                other.arrivalTime == arrivalTime) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, arrivalCity, arrivalPlace, arrivalTime, price, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArrivalPointModelCopyWith<_$_ArrivalPointModel> get copyWith =>
      __$$_ArrivalPointModelCopyWithImpl<_$_ArrivalPointModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArrivalPointModelToJson(
      this,
    );
  }
}

abstract class _ArrivalPointModel implements ArrivalPointModel {
  const factory _ArrivalPointModel(
      {required final int id,
      required final String arrivalCity,
      required final String arrivalPlace,
      final String? arrivalTime,
      final String? price,
      final int? order}) = _$_ArrivalPointModel;

  factory _ArrivalPointModel.fromJson(Map<String, dynamic> json) =
      _$_ArrivalPointModel.fromJson;

  @override
  int get id;
  @override
  String get arrivalCity;
  @override
  String get arrivalPlace;
  @override
  String? get arrivalTime;
  @override
  String? get price;
  @override
  int? get order;
  @override
  @JsonKey(ignore: true)
  _$$_ArrivalPointModelCopyWith<_$_ArrivalPointModel> get copyWith =>
      throw _privateConstructorUsedError;
}
