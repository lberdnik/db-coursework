part of 'ticket_cubit.dart';

@freezed
class TicketState with _$TicketState {
  const factory TicketState({
    ArrivalPointModel? departurePoint,
    ArrivalPointModel? arrivalPoint,
    List<CarriageModel>? carriages,
    int? selectedCarriageId,
    int? selectedSeat,
  }) = _TicketState;
}
