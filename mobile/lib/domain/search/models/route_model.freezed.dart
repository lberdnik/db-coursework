// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RouteModel _$RouteModelFromJson(Map<String, dynamic> json) {
  return _RouteModel.fromJson(json);
}

/// @nodoc
mixin _$RouteModel {
  int get id => throw _privateConstructorUsedError;
  DepartureCityModel get departureCity => throw _privateConstructorUsedError;
  String get departureTime => throw _privateConstructorUsedError;
  List<ArrivalPointModel>? get arrivalPoints =>
      throw _privateConstructorUsedError;
  RouteCarriagesModel get carriages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RouteModelCopyWith<RouteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteModelCopyWith<$Res> {
  factory $RouteModelCopyWith(
          RouteModel value, $Res Function(RouteModel) then) =
      _$RouteModelCopyWithImpl<$Res, RouteModel>;
  @useResult
  $Res call(
      {int id,
      DepartureCityModel departureCity,
      String departureTime,
      List<ArrivalPointModel>? arrivalPoints,
      RouteCarriagesModel carriages});

  $DepartureCityModelCopyWith<$Res> get departureCity;
  $RouteCarriagesModelCopyWith<$Res> get carriages;
}

/// @nodoc
class _$RouteModelCopyWithImpl<$Res, $Val extends RouteModel>
    implements $RouteModelCopyWith<$Res> {
  _$RouteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? departureCity = null,
    Object? departureTime = null,
    Object? arrivalPoints = freezed,
    Object? carriages = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      departureCity: null == departureCity
          ? _value.departureCity
          : departureCity // ignore: cast_nullable_to_non_nullable
              as DepartureCityModel,
      departureTime: null == departureTime
          ? _value.departureTime
          : departureTime // ignore: cast_nullable_to_non_nullable
              as String,
      arrivalPoints: freezed == arrivalPoints
          ? _value.arrivalPoints
          : arrivalPoints // ignore: cast_nullable_to_non_nullable
              as List<ArrivalPointModel>?,
      carriages: null == carriages
          ? _value.carriages
          : carriages // ignore: cast_nullable_to_non_nullable
              as RouteCarriagesModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DepartureCityModelCopyWith<$Res> get departureCity {
    return $DepartureCityModelCopyWith<$Res>(_value.departureCity, (value) {
      return _then(_value.copyWith(departureCity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RouteCarriagesModelCopyWith<$Res> get carriages {
    return $RouteCarriagesModelCopyWith<$Res>(_value.carriages, (value) {
      return _then(_value.copyWith(carriages: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RouteModelCopyWith<$Res>
    implements $RouteModelCopyWith<$Res> {
  factory _$$_RouteModelCopyWith(
          _$_RouteModel value, $Res Function(_$_RouteModel) then) =
      __$$_RouteModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DepartureCityModel departureCity,
      String departureTime,
      List<ArrivalPointModel>? arrivalPoints,
      RouteCarriagesModel carriages});

  @override
  $DepartureCityModelCopyWith<$Res> get departureCity;
  @override
  $RouteCarriagesModelCopyWith<$Res> get carriages;
}

/// @nodoc
class __$$_RouteModelCopyWithImpl<$Res>
    extends _$RouteModelCopyWithImpl<$Res, _$_RouteModel>
    implements _$$_RouteModelCopyWith<$Res> {
  __$$_RouteModelCopyWithImpl(
      _$_RouteModel _value, $Res Function(_$_RouteModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? departureCity = null,
    Object? departureTime = null,
    Object? arrivalPoints = freezed,
    Object? carriages = null,
  }) {
    return _then(_$_RouteModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      departureCity: null == departureCity
          ? _value.departureCity
          : departureCity // ignore: cast_nullable_to_non_nullable
              as DepartureCityModel,
      departureTime: null == departureTime
          ? _value.departureTime
          : departureTime // ignore: cast_nullable_to_non_nullable
              as String,
      arrivalPoints: freezed == arrivalPoints
          ? _value._arrivalPoints
          : arrivalPoints // ignore: cast_nullable_to_non_nullable
              as List<ArrivalPointModel>?,
      carriages: null == carriages
          ? _value.carriages
          : carriages // ignore: cast_nullable_to_non_nullable
              as RouteCarriagesModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RouteModel implements _RouteModel {
  const _$_RouteModel(
      {required this.id,
      required this.departureCity,
      required this.departureTime,
      required final List<ArrivalPointModel>? arrivalPoints,
      required this.carriages})
      : _arrivalPoints = arrivalPoints;

  factory _$_RouteModel.fromJson(Map<String, dynamic> json) =>
      _$$_RouteModelFromJson(json);

  @override
  final int id;
  @override
  final DepartureCityModel departureCity;
  @override
  final String departureTime;
  final List<ArrivalPointModel>? _arrivalPoints;
  @override
  List<ArrivalPointModel>? get arrivalPoints {
    final value = _arrivalPoints;
    if (value == null) return null;
    if (_arrivalPoints is EqualUnmodifiableListView) return _arrivalPoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final RouteCarriagesModel carriages;

  @override
  String toString() {
    return 'RouteModel(id: $id, departureCity: $departureCity, departureTime: $departureTime, arrivalPoints: $arrivalPoints, carriages: $carriages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RouteModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.departureCity, departureCity) ||
                other.departureCity == departureCity) &&
            (identical(other.departureTime, departureTime) ||
                other.departureTime == departureTime) &&
            const DeepCollectionEquality()
                .equals(other._arrivalPoints, _arrivalPoints) &&
            (identical(other.carriages, carriages) ||
                other.carriages == carriages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, departureCity, departureTime,
      const DeepCollectionEquality().hash(_arrivalPoints), carriages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RouteModelCopyWith<_$_RouteModel> get copyWith =>
      __$$_RouteModelCopyWithImpl<_$_RouteModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RouteModelToJson(
      this,
    );
  }
}

abstract class _RouteModel implements RouteModel {
  const factory _RouteModel(
      {required final int id,
      required final DepartureCityModel departureCity,
      required final String departureTime,
      required final List<ArrivalPointModel>? arrivalPoints,
      required final RouteCarriagesModel carriages}) = _$_RouteModel;

  factory _RouteModel.fromJson(Map<String, dynamic> json) =
      _$_RouteModel.fromJson;

  @override
  int get id;
  @override
  DepartureCityModel get departureCity;
  @override
  String get departureTime;
  @override
  List<ArrivalPointModel>? get arrivalPoints;
  @override
  RouteCarriagesModel get carriages;
  @override
  @JsonKey(ignore: true)
  _$$_RouteModelCopyWith<_$_RouteModel> get copyWith =>
      throw _privateConstructorUsedError;
}
