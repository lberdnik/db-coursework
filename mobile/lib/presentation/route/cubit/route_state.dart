part of 'route_cubit.dart';

@freezed
class RouteState with _$RouteState {
  const factory RouteState({
    RouteModel? route,
    @Default([]) List<CarriageModel> carriages,
    @Default(true) bool isLoading,
    @Default([]) List<List<ArrivalPointModel>> availableTickets,
  }) = _RouteState;
}
