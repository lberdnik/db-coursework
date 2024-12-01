part of 'board_cubit.dart';

@freezed
class BoardState with _$BoardState {
  const factory BoardState({
    @Default([]) List<RouteModel> searchRoutes,
    @Default(true) bool isLoading,
  }) = _BoardState;
}
