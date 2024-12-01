// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discount_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DiscountTypeModel _$DiscountTypeModelFromJson(Map<String, dynamic> json) {
  return _DiscountTypeModel.fromJson(json);
}

/// @nodoc
mixin _$DiscountTypeModel {
  int get id => throw _privateConstructorUsedError;
  String get discountTypeName => throw _privateConstructorUsedError;
  double get discountPercent => throw _privateConstructorUsedError;
  int? get discountLimit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiscountTypeModelCopyWith<DiscountTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountTypeModelCopyWith<$Res> {
  factory $DiscountTypeModelCopyWith(
          DiscountTypeModel value, $Res Function(DiscountTypeModel) then) =
      _$DiscountTypeModelCopyWithImpl<$Res, DiscountTypeModel>;
  @useResult
  $Res call(
      {int id,
      String discountTypeName,
      double discountPercent,
      int? discountLimit});
}

/// @nodoc
class _$DiscountTypeModelCopyWithImpl<$Res, $Val extends DiscountTypeModel>
    implements $DiscountTypeModelCopyWith<$Res> {
  _$DiscountTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? discountTypeName = null,
    Object? discountPercent = null,
    Object? discountLimit = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      discountTypeName: null == discountTypeName
          ? _value.discountTypeName
          : discountTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      discountPercent: null == discountPercent
          ? _value.discountPercent
          : discountPercent // ignore: cast_nullable_to_non_nullable
              as double,
      discountLimit: freezed == discountLimit
          ? _value.discountLimit
          : discountLimit // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DiscountTypeModelCopyWith<$Res>
    implements $DiscountTypeModelCopyWith<$Res> {
  factory _$$_DiscountTypeModelCopyWith(_$_DiscountTypeModel value,
          $Res Function(_$_DiscountTypeModel) then) =
      __$$_DiscountTypeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String discountTypeName,
      double discountPercent,
      int? discountLimit});
}

/// @nodoc
class __$$_DiscountTypeModelCopyWithImpl<$Res>
    extends _$DiscountTypeModelCopyWithImpl<$Res, _$_DiscountTypeModel>
    implements _$$_DiscountTypeModelCopyWith<$Res> {
  __$$_DiscountTypeModelCopyWithImpl(
      _$_DiscountTypeModel _value, $Res Function(_$_DiscountTypeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? discountTypeName = null,
    Object? discountPercent = null,
    Object? discountLimit = freezed,
  }) {
    return _then(_$_DiscountTypeModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      discountTypeName: null == discountTypeName
          ? _value.discountTypeName
          : discountTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      discountPercent: null == discountPercent
          ? _value.discountPercent
          : discountPercent // ignore: cast_nullable_to_non_nullable
              as double,
      discountLimit: freezed == discountLimit
          ? _value.discountLimit
          : discountLimit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiscountTypeModel implements _DiscountTypeModel {
  const _$_DiscountTypeModel(
      {required this.id,
      required this.discountTypeName,
      required this.discountPercent,
      required this.discountLimit});

  factory _$_DiscountTypeModel.fromJson(Map<String, dynamic> json) =>
      _$$_DiscountTypeModelFromJson(json);

  @override
  final int id;
  @override
  final String discountTypeName;
  @override
  final double discountPercent;
  @override
  final int? discountLimit;

  @override
  String toString() {
    return 'DiscountTypeModel(id: $id, discountTypeName: $discountTypeName, discountPercent: $discountPercent, discountLimit: $discountLimit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiscountTypeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.discountTypeName, discountTypeName) ||
                other.discountTypeName == discountTypeName) &&
            (identical(other.discountPercent, discountPercent) ||
                other.discountPercent == discountPercent) &&
            (identical(other.discountLimit, discountLimit) ||
                other.discountLimit == discountLimit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, discountTypeName, discountPercent, discountLimit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiscountTypeModelCopyWith<_$_DiscountTypeModel> get copyWith =>
      __$$_DiscountTypeModelCopyWithImpl<_$_DiscountTypeModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiscountTypeModelToJson(
      this,
    );
  }
}

abstract class _DiscountTypeModel implements DiscountTypeModel {
  const factory _DiscountTypeModel(
      {required final int id,
      required final String discountTypeName,
      required final double discountPercent,
      required final int? discountLimit}) = _$_DiscountTypeModel;

  factory _DiscountTypeModel.fromJson(Map<String, dynamic> json) =
      _$_DiscountTypeModel.fromJson;

  @override
  int get id;
  @override
  String get discountTypeName;
  @override
  double get discountPercent;
  @override
  int? get discountLimit;
  @override
  @JsonKey(ignore: true)
  _$$_DiscountTypeModelCopyWith<_$_DiscountTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
