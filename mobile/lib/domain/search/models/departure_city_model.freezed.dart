// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'departure_city_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DepartureCityModel _$DepartureCityModelFromJson(Map<String, dynamic> json) {
  return _DepartureCityModel.fromJson(json);
}

/// @nodoc
mixin _$DepartureCityModel {
  @JsonKey(name: 'arrival_city')
  String get arrivalCity => throw _privateConstructorUsedError;
  @JsonKey(name: 'arrival_place')
  String get arrivalPlace => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DepartureCityModelCopyWith<DepartureCityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartureCityModelCopyWith<$Res> {
  factory $DepartureCityModelCopyWith(
          DepartureCityModel value, $Res Function(DepartureCityModel) then) =
      _$DepartureCityModelCopyWithImpl<$Res, DepartureCityModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'arrival_city') String arrivalCity,
      @JsonKey(name: 'arrival_place') String arrivalPlace,
      int? id});
}

/// @nodoc
class _$DepartureCityModelCopyWithImpl<$Res, $Val extends DepartureCityModel>
    implements $DepartureCityModelCopyWith<$Res> {
  _$DepartureCityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arrivalCity = null,
    Object? arrivalPlace = null,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      arrivalCity: null == arrivalCity
          ? _value.arrivalCity
          : arrivalCity // ignore: cast_nullable_to_non_nullable
              as String,
      arrivalPlace: null == arrivalPlace
          ? _value.arrivalPlace
          : arrivalPlace // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DepartureCityModelCopyWith<$Res>
    implements $DepartureCityModelCopyWith<$Res> {
  factory _$$_DepartureCityModelCopyWith(_$_DepartureCityModel value,
          $Res Function(_$_DepartureCityModel) then) =
      __$$_DepartureCityModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'arrival_city') String arrivalCity,
      @JsonKey(name: 'arrival_place') String arrivalPlace,
      int? id});
}

/// @nodoc
class __$$_DepartureCityModelCopyWithImpl<$Res>
    extends _$DepartureCityModelCopyWithImpl<$Res, _$_DepartureCityModel>
    implements _$$_DepartureCityModelCopyWith<$Res> {
  __$$_DepartureCityModelCopyWithImpl(
      _$_DepartureCityModel _value, $Res Function(_$_DepartureCityModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arrivalCity = null,
    Object? arrivalPlace = null,
    Object? id = freezed,
  }) {
    return _then(_$_DepartureCityModel(
      arrivalCity: null == arrivalCity
          ? _value.arrivalCity
          : arrivalCity // ignore: cast_nullable_to_non_nullable
              as String,
      arrivalPlace: null == arrivalPlace
          ? _value.arrivalPlace
          : arrivalPlace // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DepartureCityModel implements _DepartureCityModel {
  const _$_DepartureCityModel(
      {@JsonKey(name: 'arrival_city') required this.arrivalCity,
      @JsonKey(name: 'arrival_place') required this.arrivalPlace,
      this.id});

  factory _$_DepartureCityModel.fromJson(Map<String, dynamic> json) =>
      _$$_DepartureCityModelFromJson(json);

  @override
  @JsonKey(name: 'arrival_city')
  final String arrivalCity;
  @override
  @JsonKey(name: 'arrival_place')
  final String arrivalPlace;
  @override
  final int? id;

  @override
  String toString() {
    return 'DepartureCityModel(arrivalCity: $arrivalCity, arrivalPlace: $arrivalPlace, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DepartureCityModel &&
            (identical(other.arrivalCity, arrivalCity) ||
                other.arrivalCity == arrivalCity) &&
            (identical(other.arrivalPlace, arrivalPlace) ||
                other.arrivalPlace == arrivalPlace) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, arrivalCity, arrivalPlace, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DepartureCityModelCopyWith<_$_DepartureCityModel> get copyWith =>
      __$$_DepartureCityModelCopyWithImpl<_$_DepartureCityModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DepartureCityModelToJson(
      this,
    );
  }
}

abstract class _DepartureCityModel implements DepartureCityModel {
  const factory _DepartureCityModel(
      {@JsonKey(name: 'arrival_city') required final String arrivalCity,
      @JsonKey(name: 'arrival_place') required final String arrivalPlace,
      final int? id}) = _$_DepartureCityModel;

  factory _DepartureCityModel.fromJson(Map<String, dynamic> json) =
      _$_DepartureCityModel.fromJson;

  @override
  @JsonKey(name: 'arrival_city')
  String get arrivalCity;
  @override
  @JsonKey(name: 'arrival_place')
  String get arrivalPlace;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$_DepartureCityModelCopyWith<_$_DepartureCityModel> get copyWith =>
      throw _privateConstructorUsedError;
}
