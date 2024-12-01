import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:railways/domain/carriages/models/carriage_model.dart';
import 'package:railways/domain/search/models/arrival_point_model.dart';
import 'package:railways/domain/tickets/repository/tickets_repository.dart';

part 'ticket_cubit.freezed.dart';
part 'ticket_state.dart';

class TicketCubit extends Cubit<TicketState> {
  final TicketsRepository _ticketsRepository;

  TicketCubit(this._ticketsRepository) : super(const TicketState());

  Future<void> init({
    required ArrivalPointModel departurePoint,
    required ArrivalPointModel arrivalPoint,
    required List<CarriageModel> carriages,
  }) async {
    emit(
      state.copyWith(
        departurePoint: departurePoint,
        arrivalPoint: arrivalPoint,
        carriages: carriages,
      ),
    );
  }

  void onSeatTap(int seatId, int carIndex) {
    final id = state.carriages![carIndex].id;
    emit(
      state.copyWith(
        selectedSeat: seatId,
        selectedCarriageId: id,
      ),
    );
  }

  void onCarTap(int carriageIndex) {
    final id = state.carriages![carriageIndex].id;
    emit(state.copyWith(selectedCarriageId: id));
  }

  Future<void> createTicket() async {
    await _ticketsRepository.createTicket(
      departurePoint: state.departurePoint!.id,
      arrivalPoint: state.arrivalPoint!.id,
      carriage: state.selectedCarriageId!,
      seatNumber: state.selectedSeat!,
    );
  }
}
