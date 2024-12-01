// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discount_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DiscountModel _$DiscountModelFromJson(Map<String, dynamic> json) {
  return _DiscountModel.fromJson(json);
}

/// @nodoc
mixin _$DiscountModel {
  int get id => throw _privateConstructorUsedError;
  int get user => throw _privateConstructorUsedError;
  int get usageAmount => throw _privateConstructorUsedError;
  DiscountTypeModel get discountType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiscountModelCopyWith<DiscountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountModelCopyWith<$Res> {
  factory $DiscountModelCopyWith(
          DiscountModel value, $Res Function(DiscountModel) then) =
      _$DiscountModelCopyWithImpl<$Res, DiscountModel>;
  @useResult
  $Res call(
      {int id, int user, int usageAmount, DiscountTypeModel discountType});

  $DiscountTypeModelCopyWith<$Res> get discountType;
}

/// @nodoc
class _$DiscountModelCopyWithImpl<$Res, $Val extends DiscountModel>
    implements $DiscountModelCopyWith<$Res> {
  _$DiscountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? usageAmount = null,
    Object? discountType = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as int,
      usageAmount: null == usageAmount
          ? _value.usageAmount
          : usageAmount // ignore: cast_nullable_to_non_nullable
              as int,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as DiscountTypeModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DiscountTypeModelCopyWith<$Res> get discountType {
    return $DiscountTypeModelCopyWith<$Res>(_value.discountType, (value) {
      return _then(_value.copyWith(discountType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DiscountModelCopyWith<$Res>
    implements $DiscountModelCopyWith<$Res> {
  factory _$$_DiscountModelCopyWith(
          _$_DiscountModel value, $Res Function(_$_DiscountModel) then) =
      __$$_DiscountModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, int user, int usageAmount, DiscountTypeModel discountType});

  @override
  $DiscountTypeModelCopyWith<$Res> get discountType;
}

/// @nodoc
class __$$_DiscountModelCopyWithImpl<$Res>
    extends _$DiscountModelCopyWithImpl<$Res, _$_DiscountModel>
    implements _$$_DiscountModelCopyWith<$Res> {
  __$$_DiscountModelCopyWithImpl(
      _$_DiscountModel _value, $Res Function(_$_DiscountModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? usageAmount = null,
    Object? discountType = null,
  }) {
    return _then(_$_DiscountModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as int,
      usageAmount: null == usageAmount
          ? _value.usageAmount
          : usageAmount // ignore: cast_nullable_to_non_nullable
              as int,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as DiscountTypeModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiscountModel implements _DiscountModel {
  const _$_DiscountModel(
      {required this.id,
      required this.user,
      required this.usageAmount,
      required this.discountType});

  factory _$_DiscountModel.fromJson(Map<String, dynamic> json) =>
      _$$_DiscountModelFromJson(json);

  @override
  final int id;
  @override
  final int user;
  @override
  final int usageAmount;
  @override
  final DiscountTypeModel discountType;

  @override
  String toString() {
    return 'DiscountModel(id: $id, user: $user, usageAmount: $usageAmount, discountType: $discountType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiscountModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.usageAmount, usageAmount) ||
                other.usageAmount == usageAmount) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, user, usageAmount, discountType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiscountModelCopyWith<_$_DiscountModel> get copyWith =>
      __$$_DiscountModelCopyWithImpl<_$_DiscountModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiscountModelToJson(
      this,
    );
  }
}

abstract class _DiscountModel implements DiscountModel {
  const factory _DiscountModel(
      {required final int id,
      required final int user,
      required final int usageAmount,
      required final DiscountTypeModel discountType}) = _$_DiscountModel;

  factory _DiscountModel.fromJson(Map<String, dynamic> json) =
      _$_DiscountModel.fromJson;

  @override
  int get id;
  @override
  int get user;
  @override
  int get usageAmount;
  @override
  DiscountTypeModel get discountType;
  @override
  @JsonKey(ignore: true)
  _$$_DiscountModelCopyWith<_$_DiscountModel> get copyWith =>
      throw _privateConstructorUsedError;
}
