abstract class TicketsRepository {
  Future<int> createTicket({
    required int departurePoint,
    required int arrivalPoint,
    required int carriage,
    required int seatNumber,
  });
}
