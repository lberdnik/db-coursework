// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_carriages_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RouteCarriagesModel _$RouteCarriagesModelFromJson(Map<String, dynamic> json) {
  return _RouteCarriagesModel.fromJson(json);
}

/// @nodoc
mixin _$RouteCarriagesModel {
  int get availableSeatsAmount => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RouteCarriagesModelCopyWith<RouteCarriagesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteCarriagesModelCopyWith<$Res> {
  factory $RouteCarriagesModelCopyWith(
          RouteCarriagesModel value, $Res Function(RouteCarriagesModel) then) =
      _$RouteCarriagesModelCopyWithImpl<$Res, RouteCarriagesModel>;
  @useResult
  $Res call({int availableSeatsAmount, double price});
}

/// @nodoc
class _$RouteCarriagesModelCopyWithImpl<$Res, $Val extends RouteCarriagesModel>
    implements $RouteCarriagesModelCopyWith<$Res> {
  _$RouteCarriagesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableSeatsAmount = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      availableSeatsAmount: null == availableSeatsAmount
          ? _value.availableSeatsAmount
          : availableSeatsAmount // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RouteCarriagesModelCopyWith<$Res>
    implements $RouteCarriagesModelCopyWith<$Res> {
  factory _$$_RouteCarriagesModelCopyWith(_$_RouteCarriagesModel value,
          $Res Function(_$_RouteCarriagesModel) then) =
      __$$_RouteCarriagesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int availableSeatsAmount, double price});
}

/// @nodoc
class __$$_RouteCarriagesModelCopyWithImpl<$Res>
    extends _$RouteCarriagesModelCopyWithImpl<$Res, _$_RouteCarriagesModel>
    implements _$$_RouteCarriagesModelCopyWith<$Res> {
  __$$_RouteCarriagesModelCopyWithImpl(_$_RouteCarriagesModel _value,
      $Res Function(_$_RouteCarriagesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableSeatsAmount = null,
    Object? price = null,
  }) {
    return _then(_$_RouteCarriagesModel(
      availableSeatsAmount: null == availableSeatsAmount
          ? _value.availableSeatsAmount
          : availableSeatsAmount // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RouteCarriagesModel implements _RouteCarriagesModel {
  const _$_RouteCarriagesModel(
      {required this.availableSeatsAmount, required this.price});

  factory _$_RouteCarriagesModel.fromJson(Map<String, dynamic> json) =>
      _$$_RouteCarriagesModelFromJson(json);

  @override
  final int availableSeatsAmount;
  @override
  final double price;

  @override
  String toString() {
    return 'RouteCarriagesModel(availableSeatsAmount: $availableSeatsAmount, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RouteCarriagesModel &&
            (identical(other.availableSeatsAmount, availableSeatsAmount) ||
                other.availableSeatsAmount == availableSeatsAmount) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, availableSeatsAmount, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RouteCarriagesModelCopyWith<_$_RouteCarriagesModel> get copyWith =>
      __$$_RouteCarriagesModelCopyWithImpl<_$_RouteCarriagesModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RouteCarriagesModelToJson(
      this,
    );
  }
}

abstract class _RouteCarriagesModel implements RouteCarriagesModel {
  const factory _RouteCarriagesModel(
      {required final int availableSeatsAmount,
      required final double price}) = _$_RouteCarriagesModel;

  factory _RouteCarriagesModel.fromJson(Map<String, dynamic> json) =
      _$_RouteCarriagesModel.fromJson;

  @override
  int get availableSeatsAmount;
  @override
  double get price;
  @override
  @JsonKey(ignore: true)
  _$$_RouteCarriagesModelCopyWith<_$_RouteCarriagesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
