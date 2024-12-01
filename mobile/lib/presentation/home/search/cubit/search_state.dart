part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required DateTime departureTime,
    @Default([]) List<CityModel> availableCities,
    @Default([]) List<RouteModel> searchRoutes,
    CityModel? departureCity,
    CityModel? arrivalCity,
    @Default(false) isRoutesSearched,
    ArrivalPointModel? departurePoint,
    ArrivalPointModel? arrivalPoint,
  }) = _SearchState;
}
