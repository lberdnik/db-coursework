// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  int get currentIndex => throw _privateConstructorUsedError;
  List<String> get tabs => throw _privateConstructorUsedError;
  List<DiscountModel> get discounts => throw _privateConstructorUsedError;
  AccountModel? get account => throw _privateConstructorUsedError;
  dynamic get isAccountShown => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {int currentIndex,
      List<String> tabs,
      List<DiscountModel> discounts,
      AccountModel? account,
      dynamic isAccountShown});

  $AccountModelCopyWith<$Res>? get account;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
    Object? tabs = null,
    Object? discounts = null,
    Object? account = freezed,
    Object? isAccountShown = freezed,
  }) {
    return _then(_value.copyWith(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      tabs: null == tabs
          ? _value.tabs
          : tabs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      discounts: null == discounts
          ? _value.discounts
          : discounts // ignore: cast_nullable_to_non_nullable
              as List<DiscountModel>,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountModel?,
      isAccountShown: freezed == isAccountShown
          ? _value.isAccountShown
          : isAccountShown // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountModelCopyWith<$Res>? get account {
    if (_value.account == null) {
      return null;
    }

    return $AccountModelCopyWith<$Res>(_value.account!, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentIndex,
      List<String> tabs,
      List<DiscountModel> discounts,
      AccountModel? account,
      dynamic isAccountShown});

  @override
  $AccountModelCopyWith<$Res>? get account;
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
    Object? tabs = null,
    Object? discounts = null,
    Object? account = freezed,
    Object? isAccountShown = freezed,
  }) {
    return _then(_$_HomeState(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      tabs: null == tabs
          ? _value._tabs
          : tabs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      discounts: null == discounts
          ? _value._discounts
          : discounts // ignore: cast_nullable_to_non_nullable
              as List<DiscountModel>,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountModel?,
      isAccountShown:
          freezed == isAccountShown ? _value.isAccountShown! : isAccountShown,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required this.currentIndex,
      required final List<String> tabs,
      final List<DiscountModel> discounts = const [],
      this.account,
      this.isAccountShown = false})
      : _tabs = tabs,
        _discounts = discounts;

  @override
  final int currentIndex;
  final List<String> _tabs;
  @override
  List<String> get tabs {
    if (_tabs is EqualUnmodifiableListView) return _tabs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tabs);
  }

  final List<DiscountModel> _discounts;
  @override
  @JsonKey()
  List<DiscountModel> get discounts {
    if (_discounts is EqualUnmodifiableListView) return _discounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_discounts);
  }

  @override
  final AccountModel? account;
  @override
  @JsonKey()
  final dynamic isAccountShown;

  @override
  String toString() {
    return 'HomeState(currentIndex: $currentIndex, tabs: $tabs, discounts: $discounts, account: $account, isAccountShown: $isAccountShown)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            const DeepCollectionEquality().equals(other._tabs, _tabs) &&
            const DeepCollectionEquality()
                .equals(other._discounts, _discounts) &&
            (identical(other.account, account) || other.account == account) &&
            const DeepCollectionEquality()
                .equals(other.isAccountShown, isAccountShown));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentIndex,
      const DeepCollectionEquality().hash(_tabs),
      const DeepCollectionEquality().hash(_discounts),
      account,
      const DeepCollectionEquality().hash(isAccountShown));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final int currentIndex,
      required final List<String> tabs,
      final List<DiscountModel> discounts,
      final AccountModel? account,
      final dynamic isAccountShown}) = _$_HomeState;

  @override
  int get currentIndex;
  @override
  List<String> get tabs;
  @override
  List<DiscountModel> get discounts;
  @override
  AccountModel? get account;
  @override
  dynamic get isAccountShown;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
