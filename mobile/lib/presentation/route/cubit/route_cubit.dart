import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:railways/domain/carriages/models/carriage_model.dart';
import 'package:railways/domain/carriages/repository/carriages_repository.dart';
import 'package:railways/domain/search/models/arrival_point_model.dart';
import 'package:railways/domain/search/models/route_model.dart';

part 'route_cubit.freezed.dart';
part 'route_state.dart';

class RouteCubit extends Cubit<RouteState> {
  final CarriagesRepository _carriagesRepository;

  RouteCubit(
    this._carriagesRepository,
  ) : super(const RouteState());

  Future<void> init(
    RouteModel route, {
    ArrivalPointModel? departurePointBase,
    ArrivalPointModel? arrivalPointBase,
  }) async {
    final carriages = await _carriagesRepository.getCarriages(route.id);
    final departurePoint = ArrivalPointModel(
      id: route.departureCity.id!,
      arrivalCity: route.departureCity.arrivalCity,
      arrivalPlace: route.departureCity.arrivalPlace,
      arrivalTime: route.departureTime,
    );
    final availableTickets = <List<ArrivalPointModel>>[];
    for (var i = 0; i < route.arrivalPoints!.length; i++) {
      final point = route.arrivalPoints![i];
      final indexOfArrival = route.arrivalPoints!.indexWhere(
        (e) => e.arrivalCity == arrivalPointBase?.arrivalCity,
      );
      if ((departurePointBase == null ||
              departurePoint.arrivalCity == departurePointBase.arrivalCity) &&
          (arrivalPointBase == null ||
              point.arrivalCity == arrivalPointBase.arrivalCity ||
              indexOfArrival <= i)) {
        availableTickets.add([departurePoint, point]);
      }
    }
    for (var i = 0; i < route.arrivalPoints!.length; i++) {
      for (var j = i + 1; j < route.arrivalPoints!.length; j++) {
        if ((departurePointBase == null ||
                route.arrivalPoints![i].arrivalCity ==
                    departurePointBase.arrivalCity) &&
            (arrivalPointBase == null ||
                route.arrivalPoints![j].arrivalCity ==
                    arrivalPointBase.arrivalCity)) {
          availableTickets.add(
            [route.arrivalPoints![i], route.arrivalPoints![j]],
          );
        }
      }
    }
    emit(
      state.copyWith(
        carriages: carriages,
        route: route,
        isLoading: false,
        availableTickets: availableTickets,
      ),
    );
  }
}
