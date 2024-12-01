// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'board_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BoardState {
  List<RouteModel> get searchRoutes => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoardStateCopyWith<BoardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardStateCopyWith<$Res> {
  factory $BoardStateCopyWith(
          BoardState value, $Res Function(BoardState) then) =
      _$BoardStateCopyWithImpl<$Res, BoardState>;
  @useResult
  $Res call({List<RouteModel> searchRoutes, bool isLoading});
}

/// @nodoc
class _$BoardStateCopyWithImpl<$Res, $Val extends BoardState>
    implements $BoardStateCopyWith<$Res> {
  _$BoardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchRoutes = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      searchRoutes: null == searchRoutes
          ? _value.searchRoutes
          : searchRoutes // ignore: cast_nullable_to_non_nullable
              as List<RouteModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BoardStateCopyWith<$Res>
    implements $BoardStateCopyWith<$Res> {
  factory _$$_BoardStateCopyWith(
          _$_BoardState value, $Res Function(_$_BoardState) then) =
      __$$_BoardStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RouteModel> searchRoutes, bool isLoading});
}

/// @nodoc
class __$$_BoardStateCopyWithImpl<$Res>
    extends _$BoardStateCopyWithImpl<$Res, _$_BoardState>
    implements _$$_BoardStateCopyWith<$Res> {
  __$$_BoardStateCopyWithImpl(
      _$_BoardState _value, $Res Function(_$_BoardState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchRoutes = null,
    Object? isLoading = null,
  }) {
    return _then(_$_BoardState(
      searchRoutes: null == searchRoutes
          ? _value._searchRoutes
          : searchRoutes // ignore: cast_nullable_to_non_nullable
              as List<RouteModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_BoardState implements _BoardState {
  const _$_BoardState(
      {final List<RouteModel> searchRoutes = const [], this.isLoading = true})
      : _searchRoutes = searchRoutes;

  final List<RouteModel> _searchRoutes;
  @override
  @JsonKey()
  List<RouteModel> get searchRoutes {
    if (_searchRoutes is EqualUnmodifiableListView) return _searchRoutes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchRoutes);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'BoardState(searchRoutes: $searchRoutes, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BoardState &&
            const DeepCollectionEquality()
                .equals(other._searchRoutes, _searchRoutes) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_searchRoutes), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BoardStateCopyWith<_$_BoardState> get copyWith =>
      __$$_BoardStateCopyWithImpl<_$_BoardState>(this, _$identity);
}

abstract class _BoardState implements BoardState {
  const factory _BoardState(
      {final List<RouteModel> searchRoutes,
      final bool isLoading}) = _$_BoardState;

  @override
  List<RouteModel> get searchRoutes;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_BoardStateCopyWith<_$_BoardState> get copyWith =>
      throw _privateConstructorUsedError;
}
