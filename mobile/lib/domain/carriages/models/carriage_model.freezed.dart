// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'carriage_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CarriageModel _$CarriageModelFromJson(Map<String, dynamic> json) {
  return _CarriageModel.fromJson(json);
}

/// @nodoc
mixin _$CarriageModel {
  int? get id => throw _privateConstructorUsedError;
  int get carriageType => throw _privateConstructorUsedError;
  int get seatAmount => throw _privateConstructorUsedError;
  RouteModel get route => throw _privateConstructorUsedError;
  List<int> get availableSeats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarriageModelCopyWith<CarriageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarriageModelCopyWith<$Res> {
  factory $CarriageModelCopyWith(
          CarriageModel value, $Res Function(CarriageModel) then) =
      _$CarriageModelCopyWithImpl<$Res, CarriageModel>;
  @useResult
  $Res call(
      {int? id,
      int carriageType,
      int seatAmount,
      RouteModel route,
      List<int> availableSeats});

  $RouteModelCopyWith<$Res> get route;
}

/// @nodoc
class _$CarriageModelCopyWithImpl<$Res, $Val extends CarriageModel>
    implements $CarriageModelCopyWith<$Res> {
  _$CarriageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? carriageType = null,
    Object? seatAmount = null,
    Object? route = null,
    Object? availableSeats = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      carriageType: null == carriageType
          ? _value.carriageType
          : carriageType // ignore: cast_nullable_to_non_nullable
              as int,
      seatAmount: null == seatAmount
          ? _value.seatAmount
          : seatAmount // ignore: cast_nullable_to_non_nullable
              as int,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as RouteModel,
      availableSeats: null == availableSeats
          ? _value.availableSeats
          : availableSeats // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RouteModelCopyWith<$Res> get route {
    return $RouteModelCopyWith<$Res>(_value.route, (value) {
      return _then(_value.copyWith(route: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CarriageModelCopyWith<$Res>
    implements $CarriageModelCopyWith<$Res> {
  factory _$$_CarriageModelCopyWith(
          _$_CarriageModel value, $Res Function(_$_CarriageModel) then) =
      __$$_CarriageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int carriageType,
      int seatAmount,
      RouteModel route,
      List<int> availableSeats});

  @override
  $RouteModelCopyWith<$Res> get route;
}

/// @nodoc
class __$$_CarriageModelCopyWithImpl<$Res>
    extends _$CarriageModelCopyWithImpl<$Res, _$_CarriageModel>
    implements _$$_CarriageModelCopyWith<$Res> {
  __$$_CarriageModelCopyWithImpl(
      _$_CarriageModel _value, $Res Function(_$_CarriageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? carriageType = null,
    Object? seatAmount = null,
    Object? route = null,
    Object? availableSeats = null,
  }) {
    return _then(_$_CarriageModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      carriageType: null == carriageType
          ? _value.carriageType
          : carriageType // ignore: cast_nullable_to_non_nullable
              as int,
      seatAmount: null == seatAmount
          ? _value.seatAmount
          : seatAmount // ignore: cast_nullable_to_non_nullable
              as int,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as RouteModel,
      availableSeats: null == availableSeats
          ? _value._availableSeats
          : availableSeats // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CarriageModel implements _CarriageModel {
  const _$_CarriageModel(
      {this.id,
      required this.carriageType,
      required this.seatAmount,
      required this.route,
      required final List<int> availableSeats})
      : _availableSeats = availableSeats;

  factory _$_CarriageModel.fromJson(Map<String, dynamic> json) =>
      _$$_CarriageModelFromJson(json);

  @override
  final int? id;
  @override
  final int carriageType;
  @override
  final int seatAmount;
  @override
  final RouteModel route;
  final List<int> _availableSeats;
  @override
  List<int> get availableSeats {
    if (_availableSeats is EqualUnmodifiableListView) return _availableSeats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableSeats);
  }

  @override
  String toString() {
    return 'CarriageModel(id: $id, carriageType: $carriageType, seatAmount: $seatAmount, route: $route, availableSeats: $availableSeats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarriageModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.carriageType, carriageType) ||
                other.carriageType == carriageType) &&
            (identical(other.seatAmount, seatAmount) ||
                other.seatAmount == seatAmount) &&
            (identical(other.route, route) || other.route == route) &&
            const DeepCollectionEquality()
                .equals(other._availableSeats, _availableSeats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, carriageType, seatAmount,
      route, const DeepCollectionEquality().hash(_availableSeats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarriageModelCopyWith<_$_CarriageModel> get copyWith =>
      __$$_CarriageModelCopyWithImpl<_$_CarriageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarriageModelToJson(
      this,
    );
  }
}

abstract class _CarriageModel implements CarriageModel {
  const factory _CarriageModel(
      {final int? id,
      required final int carriageType,
      required final int seatAmount,
      required final RouteModel route,
      required final List<int> availableSeats}) = _$_CarriageModel;

  factory _CarriageModel.fromJson(Map<String, dynamic> json) =
      _$_CarriageModel.fromJson;

  @override
  int? get id;
  @override
  int get carriageType;
  @override
  int get seatAmount;
  @override
  RouteModel get route;
  @override
  List<int> get availableSeats;
  @override
  @JsonKey(ignore: true)
  _$$_CarriageModelCopyWith<_$_CarriageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
