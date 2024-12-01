// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TicketState {
  ArrivalPointModel? get departurePoint => throw _privateConstructorUsedError;
  ArrivalPointModel? get arrivalPoint => throw _privateConstructorUsedError;
  List<CarriageModel>? get carriages => throw _privateConstructorUsedError;
  int? get selectedCarriageId => throw _privateConstructorUsedError;
  int? get selectedSeat => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketStateCopyWith<TicketState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketStateCopyWith<$Res> {
  factory $TicketStateCopyWith(
          TicketState value, $Res Function(TicketState) then) =
      _$TicketStateCopyWithImpl<$Res, TicketState>;
  @useResult
  $Res call(
      {ArrivalPointModel? departurePoint,
      ArrivalPointModel? arrivalPoint,
      List<CarriageModel>? carriages,
      int? selectedCarriageId,
      int? selectedSeat});

  $ArrivalPointModelCopyWith<$Res>? get departurePoint;
  $ArrivalPointModelCopyWith<$Res>? get arrivalPoint;
}

/// @nodoc
class _$TicketStateCopyWithImpl<$Res, $Val extends TicketState>
    implements $TicketStateCopyWith<$Res> {
  _$TicketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departurePoint = freezed,
    Object? arrivalPoint = freezed,
    Object? carriages = freezed,
    Object? selectedCarriageId = freezed,
    Object? selectedSeat = freezed,
  }) {
    return _then(_value.copyWith(
      departurePoint: freezed == departurePoint
          ? _value.departurePoint
          : departurePoint // ignore: cast_nullable_to_non_nullable
              as ArrivalPointModel?,
      arrivalPoint: freezed == arrivalPoint
          ? _value.arrivalPoint
          : arrivalPoint // ignore: cast_nullable_to_non_nullable
              as ArrivalPointModel?,
      carriages: freezed == carriages
          ? _value.carriages
          : carriages // ignore: cast_nullable_to_non_nullable
              as List<CarriageModel>?,
      selectedCarriageId: freezed == selectedCarriageId
          ? _value.selectedCarriageId
          : selectedCarriageId // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedSeat: freezed == selectedSeat
          ? _value.selectedSeat
          : selectedSeat // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
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
abstract class _$$_TicketStateCopyWith<$Res>
    implements $TicketStateCopyWith<$Res> {
  factory _$$_TicketStateCopyWith(
          _$_TicketState value, $Res Function(_$_TicketState) then) =
      __$$_TicketStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ArrivalPointModel? departurePoint,
      ArrivalPointModel? arrivalPoint,
      List<CarriageModel>? carriages,
      int? selectedCarriageId,
      int? selectedSeat});

  @override
  $ArrivalPointModelCopyWith<$Res>? get departurePoint;
  @override
  $ArrivalPointModelCopyWith<$Res>? get arrivalPoint;
}

/// @nodoc
class __$$_TicketStateCopyWithImpl<$Res>
    extends _$TicketStateCopyWithImpl<$Res, _$_TicketState>
    implements _$$_TicketStateCopyWith<$Res> {
  __$$_TicketStateCopyWithImpl(
      _$_TicketState _value, $Res Function(_$_TicketState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departurePoint = freezed,
    Object? arrivalPoint = freezed,
    Object? carriages = freezed,
    Object? selectedCarriageId = freezed,
    Object? selectedSeat = freezed,
  }) {
    return _then(_$_TicketState(
      departurePoint: freezed == departurePoint
          ? _value.departurePoint
          : departurePoint // ignore: cast_nullable_to_non_nullable
              as ArrivalPointModel?,
      arrivalPoint: freezed == arrivalPoint
          ? _value.arrivalPoint
          : arrivalPoint // ignore: cast_nullable_to_non_nullable
              as ArrivalPointModel?,
      carriages: freezed == carriages
          ? _value._carriages
          : carriages // ignore: cast_nullable_to_non_nullable
              as List<CarriageModel>?,
      selectedCarriageId: freezed == selectedCarriageId
          ? _value.selectedCarriageId
          : selectedCarriageId // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedSeat: freezed == selectedSeat
          ? _value.selectedSeat
          : selectedSeat // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_TicketState implements _TicketState {
  const _$_TicketState(
      {this.departurePoint,
      this.arrivalPoint,
      final List<CarriageModel>? carriages,
      this.selectedCarriageId,
      this.selectedSeat})
      : _carriages = carriages;

  @override
  final ArrivalPointModel? departurePoint;
  @override
  final ArrivalPointModel? arrivalPoint;
  final List<CarriageModel>? _carriages;
  @override
  List<CarriageModel>? get carriages {
    final value = _carriages;
    if (value == null) return null;
    if (_carriages is EqualUnmodifiableListView) return _carriages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? selectedCarriageId;
  @override
  final int? selectedSeat;

  @override
  String toString() {
    return 'TicketState(departurePoint: $departurePoint, arrivalPoint: $arrivalPoint, carriages: $carriages, selectedCarriageId: $selectedCarriageId, selectedSeat: $selectedSeat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketState &&
            (identical(other.departurePoint, departurePoint) ||
                other.departurePoint == departurePoint) &&
            (identical(other.arrivalPoint, arrivalPoint) ||
                other.arrivalPoint == arrivalPoint) &&
            const DeepCollectionEquality()
                .equals(other._carriages, _carriages) &&
            (identical(other.selectedCarriageId, selectedCarriageId) ||
                other.selectedCarriageId == selectedCarriageId) &&
            (identical(other.selectedSeat, selectedSeat) ||
                other.selectedSeat == selectedSeat));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      departurePoint,
      arrivalPoint,
      const DeepCollectionEquality().hash(_carriages),
      selectedCarriageId,
      selectedSeat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketStateCopyWith<_$_TicketState> get copyWith =>
      __$$_TicketStateCopyWithImpl<_$_TicketState>(this, _$identity);
}

abstract class _TicketState implements TicketState {
  const factory _TicketState(
      {final ArrivalPointModel? departurePoint,
      final ArrivalPointModel? arrivalPoint,
      final List<CarriageModel>? carriages,
      final int? selectedCarriageId,
      final int? selectedSeat}) = _$_TicketState;

  @override
  ArrivalPointModel? get departurePoint;
  @override
  ArrivalPointModel? get arrivalPoint;
  @override
  List<CarriageModel>? get carriages;
  @override
  int? get selectedCarriageId;
  @override
  int? get selectedSeat;
  @override
  @JsonKey(ignore: true)
  _$$_TicketStateCopyWith<_$_TicketState> get copyWith =>
      throw _privateConstructorUsedError;
}
