part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    AccountModel? account,
    @Default(true) bool isLoading,
  }) = _ProfileState;
}
