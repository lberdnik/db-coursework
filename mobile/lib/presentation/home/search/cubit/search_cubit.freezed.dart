// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchState {
  DateTime get departureTime => throw _privateConstructorUsedError;
  List<CityModel> get availableCities => throw _privateConstructorUsedError;
  List<RouteModel> get searchRoutes => throw _privateConstructorUsedError;
  CityModel? get departureCity => throw _privateConstructorUsedError;
  CityModel? get arrivalCity => throw _privateConstructorUsedError;
  dynamic get isRoutesSearched => throw _privateConstructorUsedError;
  ArrivalPointModel? get departurePoint => throw _privateConstructorUsedError;
  ArrivalPointModel? get arrivalPoint => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {DateTime departureTime,
      List<CityModel> availableCities,
      List<RouteModel> searchRoutes,
      CityModel? departureCity,
      CityModel? arrivalCity,
      dynamic isRoutesSearched,
      ArrivalPointModel? departurePoint,
      ArrivalPointModel? arrivalPoint});

  $CityModelCopyWith<$Res>? get departureCity;
  $CityModelCopyWith<$Res>? get arrivalCity;
  $ArrivalPointModelCopyWith<$Res>? get departurePoint;
  $ArrivalPointModelCopyWith<$Res>? get arrivalPoint;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departureTime = null,
    Object? availableCities = null,
    Object? searchRoutes = null,
    Object? departureCity = freezed,
    Object? arrivalCity = freezed,
    Object? isRoutesSearched = freezed,
    Object? departurePoint = freezed,
    Object? arrivalPoint = freezed,
  }) {
    return _then(_value.copyWith(
      departureTime: null == departureTime
          ? _value.departureTime
          : departureTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      availableCities: null == availableCities
          ? _value.availableCities
          : availableCities // ignore: cast_nullable_to_non_nullable
              as List<CityModel>,
      searchRoutes: null == searchRoutes
          ? _value.searchRoutes
          : searchRoutes // ignore: cast_nullable_to_non_nullable
              as List<RouteModel>,
      departureCity: freezed == departureCity
          ? _value.departureCity
          : departureCity // ignore: cast_nullable_to_non_nullable
              as CityModel?,
      arrivalCity: freezed == arrivalCity
          ? _value.arrivalCity
          : arrivalCity // ignore: cast_nullable_to_non_nullable
              as CityModel?,
      isRoutesSearched: freezed == isRoutesSearched
          ? _value.isRoutesSearched
          : isRoutesSearched // ignore: cast_nullable_to_non_nullable
              as dynamic,
      departurePoint: freezed == departurePoint
          ? _value.departurePoint
          : departurePoint // ignore: cast_nullable_to_non_nullable
              as ArrivalPointModel?,
      arrivalPoint: freezed == arrivalPoint
          ? _value.arrivalPoint
          : arrivalPoint // ignore: cast_nullable_to_non_nullable
              as ArrivalPointModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CityModelCopyWith<$Res>? get departureCity {
    if (_value.departureCity == null) {
      return null;
    }

    return $CityModelCopyWith<$Res>(_value.departureCity!, (value) {
      return _then(_value.copyWith(departureCity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CityModelCopyWith<$Res>? get arrivalCity {
    if (_value.arrivalCity == null) {
      return null;
    }

    return $CityModelCopyWith<$Res>(_value.arrivalCity!, (value) {
      return _then(_value.copyWith(arrivalCity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ArrivalPointModelCopyWith<$Res>? get departurePoint {
    if (_value.departurePoint == null) {
      return null;
    }

    return $ArrivalPointModelCopyWith<$Res>(_value.departurePoint!, (value) {
      return _then(_value.copyWith(departurePoint: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ArrivalPointModelCopyWith<$Res>? get arrivalPoint {
    if (_value.arrivalPoint == null) {
      return null;
    }

    return $ArrivalPointModelCopyWith<$Res>(_value.arrivalPoint!, (value) {
      return _then(_value.copyWith(arrivalPoint: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$_SearchStateCopyWith(
          _$_SearchState value, $Res Function(_$_SearchState) then) =
      __$$_SearchStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime departureTime,
      List<CityModel> availableCities,
      List<RouteModel> searchRoutes,
      CityModel? departureCity,
      CityModel? arrivalCity,
      dynamic isRoutesSearched,
      ArrivalPointModel? departurePoint,
      ArrivalPointModel? arrivalPoint});

  @override
  $CityModelCopyWith<$Res>? get departureCity;
  @override
  $CityModelCopyWith<$Res>? get arrivalCity;
  @override
  $ArrivalPointModelCopyWith<$Res>? get departurePoint;
  @override
  $ArrivalPointModelCopyWith<$Res>? get arrivalPoint;
}

/// @nodoc
class __$$_SearchStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_SearchState>
    implements _$$_SearchStateCopyWith<$Res> {
  __$$_SearchStateCopyWithImpl(
      _$_SearchState _value, $Res Function(_$_SearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departureTime = null,
    Object? availableCities = null,
    Object? searchRoutes = null,
    Object? departureCity = freezed,
    Object? arrivalCity = freezed,
    Object? isRoutesSearched = freezed,
    Object? departurePoint = freezed,
    Object? arrivalPoint = freezed,
  }) {
    return _then(_$_SearchState(
      departureTime: null == departureTime
          ? _value.departureTime
          : departureTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      availableCities: null == availableCities
          ? _value._availableCities
          : availableCities // ignore: cast_nullable_to_non_nullable
              as List<CityModel>,
      searchRoutes: null == searchRoutes
          ? _value._searchRoutes
          : searchRoutes // ignore: cast_nullable_to_non_nullable
              as List<RouteModel>,
      departureCity: freezed == departureCity
          ? _value.departureCity
          : departureCity // ignore: cast_nullable_to_non_nullable
              as CityModel?,
      arrivalCity: freezed == arrivalCity
          ? _value.arrivalCity
          : arrivalCity // ignore: cast_nullable_to_non_nullable
              as CityModel?,
      isRoutesSearched: freezed == isRoutesSearched
          ? _value.isRoutesSearched!
          : isRoutesSearched,
      departurePoint: freezed == departurePoint
          ? _value.departurePoint
          : departurePoint // ignore: cast_nullable_to_non_nullable
              as ArrivalPointModel?,
      arrivalPoint: freezed == arrivalPoint
          ? _value.arrivalPoint
          : arrivalPoint // ignore: cast_nullable_to_non_nullable
              as ArrivalPointModel?,
    ));
  }
}

/// @nodoc

class _$_SearchState implements _SearchState {
  const _$_SearchState(
      {required this.departureTime,
      final List<CityModel> availableCities = const [],
      final List<RouteModel> searchRoutes = const [],
      this.departureCity,
      this.arrivalCity,
      this.isRoutesSearched = false,
      this.departurePoint,
      this.arrivalPoint})
      : _availableCities = availableCities,
        _searchRoutes = searchRoutes;

  @override
  final DateTime departureTime;
  final List<CityModel> _availableCities;
  @override
  @JsonKey()
  List<CityModel> get availableCities {
    if (_availableCities is EqualUnmodifiableListView) return _availableCities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableCities);
  }

  final List<RouteModel> _searchRoutes;
  @override
  @JsonKey()
  List<RouteModel> get searchRoutes {
    if (_searchRoutes is EqualUnmodifiableListView) return _searchRoutes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchRoutes);
  }

  @override
  final CityModel? departureCity;
  @override
  final CityModel? arrivalCity;
  @override
  @JsonKey()
  final dynamic isRoutesSearched;
  @override
  final ArrivalPointModel? departurePoint;
  @override
  final ArrivalPointModel? arrivalPoint;

  @override
  String toString() {
    return 'SearchState(departureTime: $departureTime, availableCities: $availableCities, searchRoutes: $searchRoutes, departureCity: $departureCity, arrivalCity: $arrivalCity, isRoutesSearched: $isRoutesSearched, departurePoint: $departurePoint, arrivalPoint: $arrivalPoint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchState &&
            (identical(other.departureTime, departureTime) ||
                other.departureTime == departureTime) &&
            const DeepCollectionEquality()
                .equals(other._availableCities, _availableCities) &&
            const DeepCollectionEquality()
                .equals(other._searchRoutes, _searchRoutes) &&
            (identical(other.departureCity, departureCity) ||
                other.departureCity == departureCity) &&
            (identical(other.arrivalCity, arrivalCity) ||
                other.arrivalCity == arrivalCity) &&
            const DeepCollectionEquality()
                .equals(other.isRoutesSearched, isRoutesSearched) &&
            (identical(other.departurePoint, departurePoint) ||
                other.departurePoint == departurePoint) &&
            (identical(other.arrivalPoint, arrivalPoint) ||
                other.arrivalPoint == arrivalPoint));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      departureTime,
      const DeepCollectionEquality().hash(_availableCities),
      const DeepCollectionEquality().hash(_searchRoutes),
      departureCity,
      arrivalCity,
      const DeepCollectionEquality().hash(isRoutesSearched),
      departurePoint,
      arrivalPoint);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      __$$_SearchStateCopyWithImpl<_$_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {required final DateTime departureTime,
      final List<CityModel> availableCities,
      final List<RouteModel> searchRoutes,
      final CityModel? departureCity,
      final CityModel? arrivalCity,
      final dynamic isRoutesSearched,
      final ArrivalPointModel? departurePoint,
      final ArrivalPointModel? arrivalPoint}) = _$_SearchState;

  @override
  DateTime get departureTime;
  @override
  List<CityModel> get availableCities;
  @override
  List<RouteModel> get searchRoutes;
  @override
  CityModel? get departureCity;
  @override
  CityModel? get arrivalCity;
  @override
  dynamic get isRoutesSearched;
  @override
  ArrivalPointModel? get departurePoint;
  @override
  ArrivalPointModel? get arrivalPoint;
  @override
  @JsonKey(ignore: true)
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
