import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:railways/domain/search/models/arrival_point_model.dart';
import 'package:railways/domain/search/models/city_model.dart';
import 'package:railways/domain/search/models/route_model.dart';
import 'package:railways/domain/search/repository/search_repository.dart';

part 'search_cubit.freezed.dart';
part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final SearchRepository searchRepository;

  SearchCubit(this.searchRepository)
      : super(
          SearchState(departureTime: DateTime.now()),
        );

  Future<void> init() async {
    final availableCities = await searchRepository.fetchAvailableCities();
    final now = DateTime.now();
    emit(
      state.copyWith(
        availableCities: availableCities,
        departureTime: now,
      ),
    );
  }

  void updateDepartureCity(String city) {
    final cityModel = state.availableCities.firstWhere(
      (e) => city.contains(e.arrivalCity),
    );
    emit(state.copyWith(departureCity: cityModel));
  }

  void updateArrivalCity(String city) {
    final cityModel = state.availableCities.firstWhere(
      (e) => city.contains(e.arrivalCity),
    );
    emit(state.copyWith(arrivalCity: cityModel));
  }

  void updateDepartureTime(DateTime date) {
    emit(state.copyWith(departureTime: date));
  }

  Future<void> search() async {
    final routes = await searchRepository.searchRoutes(
      arrivalCityId: state.arrivalCity!.id,
      departureCityId: state.departureCity!.id,
      departureDay: state.departureTime.toIso8601String().substring(0, 10),
    );
    try {
      final departurePoint = ArrivalPointModel(
        id: state.departureCity!.id,
        arrivalCity: state.departureCity!.arrivalCity,
        arrivalPlace: state.departureCity!.arrivalPlace,
        arrivalTime: routes.first.departureTime,
      );
      final arrivalPoint = ArrivalPointModel(
        id: state.arrivalCity!.id,
        arrivalCity: state.arrivalCity!.arrivalCity,
        arrivalPlace: state.arrivalCity!.arrivalPlace,
        arrivalTime: routes.first.arrivalPoints!
            .firstWhere((e) => e.arrivalCity == state.arrivalCity!.arrivalCity)
            .arrivalTime,
      );
      emit(
        state.copyWith(
          searchRoutes: routes,
          isRoutesSearched: true,
          arrivalPoint: arrivalPoint,
          departurePoint: departurePoint,
        ),
      );
    } catch (_) {
      emit(
        state.copyWith(
          searchRoutes: routes,
          isRoutesSearched: true,
        ),
      );
    }
  }

  bool get requiredFieldsFilled =>
      state.arrivalCity != null && state.departureCity != null;
}
