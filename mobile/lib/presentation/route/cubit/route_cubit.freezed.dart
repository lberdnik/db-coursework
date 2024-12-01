// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RouteState {
  RouteModel? get route => throw _privateConstructorUsedError;
  List<CarriageModel> get carriages => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  List<List<ArrivalPointModel>> get availableTickets =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RouteStateCopyWith<RouteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteStateCopyWith<$Res> {
  factory $RouteStateCopyWith(
          RouteState value, $Res Function(RouteState) then) =
      _$RouteStateCopyWithImpl<$Res, RouteState>;
  @useResult
  $Res call(
      {RouteModel? route,
      List<CarriageModel> carriages,
      bool isLoading,
      List<List<ArrivalPointModel>> availableTickets});

  $RouteModelCopyWith<$Res>? get route;
}

/// @nodoc
class _$RouteStateCopyWithImpl<$Res, $Val extends RouteState>
    implements $RouteStateCopyWith<$Res> {
  _$RouteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = freezed,
    Object? carriages = null,
    Object? isLoading = null,
    Object? availableTickets = null,
  }) {
    return _then(_value.copyWith(
      route: freezed == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as RouteModel?,
      carriages: null == carriages
          ? _value.carriages
          : carriages // ignore: cast_nullable_to_non_nullable
              as List<CarriageModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      availableTickets: null == availableTickets
          ? _value.availableTickets
          : availableTickets // ignore: cast_nullable_to_non_nullable
              as List<List<ArrivalPointModel>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RouteModelCopyWith<$Res>? get route {
    if (_value.route == null) {
      return null;
    }

    return $RouteModelCopyWith<$Res>(_value.route!, (value) {
      return _then(_value.copyWith(route: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RouteStateCopyWith<$Res>
    implements $RouteStateCopyWith<$Res> {
  factory _$$_RouteStateCopyWith(
          _$_RouteState value, $Res Function(_$_RouteState) then) =
      __$$_RouteStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RouteModel? route,
      List<CarriageModel> carriages,
      bool isLoading,
      List<List<ArrivalPointModel>> availableTickets});

  @override
  $RouteModelCopyWith<$Res>? get route;
}

/// @nodoc
class __$$_RouteStateCopyWithImpl<$Res>
    extends _$RouteStateCopyWithImpl<$Res, _$_RouteState>
    implements _$$_RouteStateCopyWith<$Res> {
  __$$_RouteStateCopyWithImpl(
      _$_RouteState _value, $Res Function(_$_RouteState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = freezed,
    Object? carriages = null,
    Object? isLoading = null,
    Object? availableTickets = null,
  }) {
    return _then(_$_RouteState(
      route: freezed == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as RouteModel?,
      carriages: null == carriages
          ? _value._carriages
          : carriages // ignore: cast_nullable_to_non_nullable
              as List<CarriageModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      availableTickets: null == availableTickets
          ? _value._availableTickets
          : availableTickets // ignore: cast_nullable_to_non_nullable
              as List<List<ArrivalPointModel>>,
    ));
  }
}

/// @nodoc

class _$_RouteState implements _RouteState {
  const _$_RouteState(
      {this.route,
      final List<CarriageModel> carriages = const [],
      this.isLoading = true,
      final List<List<ArrivalPointModel>> availableTickets = const []})
      : _carriages = carriages,
        _availableTickets = availableTickets;

  @override
  final RouteModel? route;
  final List<CarriageModel> _carriages;
  @override
  @JsonKey()
  List<CarriageModel> get carriages {
    if (_carriages is EqualUnmodifiableListView) return _carriages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_carriages);
  }

  @override
  @JsonKey()
  final bool isLoading;
  final List<List<ArrivalPointModel>> _availableTickets;
  @override
  @JsonKey()
  List<List<ArrivalPointModel>> get availableTickets {
    if (_availableTickets is EqualUnmodifiableListView)
      return _availableTickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableTickets);
  }

  @override
  String toString() {
    return 'RouteState(route: $route, carriages: $carriages, isLoading: $isLoading, availableTickets: $availableTickets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RouteState &&
            (identical(other.route, route) || other.route == route) &&
            const DeepCollectionEquality()
                .equals(other._carriages, _carriages) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._availableTickets, _availableTickets));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      route,
      const DeepCollectionEquality().hash(_carriages),
      isLoading,
      const DeepCollectionEquality().hash(_availableTickets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RouteStateCopyWith<_$_RouteState> get copyWith =>
      __$$_RouteStateCopyWithImpl<_$_RouteState>(this, _$identity);
}

abstract class _RouteState implements RouteState {
  const factory _RouteState(
      {final RouteModel? route,
      final List<CarriageModel> carriages,
      final bool isLoading,
      final List<List<ArrivalPointModel>> availableTickets}) = _$_RouteState;

  @override
  RouteModel? get route;
  @override
  List<CarriageModel> get carriages;
  @override
  bool get isLoading;
  @override
  List<List<ArrivalPointModel>> get availableTickets;
  @override
  @JsonKey(ignore: true)
  _$$_RouteStateCopyWith<_$_RouteState> get copyWith =>
      throw _privateConstructorUsedError;
}
