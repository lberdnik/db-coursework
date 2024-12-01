part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required int currentIndex,
    required List<String> tabs,
    @Default([]) List<DiscountModel> discounts,
    AccountModel? account,
    @Default(false) isAccountShown,
  }) = _HomeState;
}
