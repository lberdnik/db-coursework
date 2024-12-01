import 'package:railways/domain/remote/remote_source.dart';
import 'package:railways/domain/tickets/models/tickets_request.dart';
import 'package:railways/domain/tickets/repository/tickets_repository.dart';

class TicketsRepositoryImpl implements TicketsRepository {
  final RemoteSource _remoteSource;

  const TicketsRepositoryImpl(this._remoteSource);

  @override
  Future<int> createTicket({
    required int departurePoint,
    required int arrivalPoint,
    required int carriage,
    required int seatNumber,
  }) async {
    final request = TicketsRequest(
      arrivalPoint: arrivalPoint,
      carriage: carriage,
      departurePoint: departurePoint,
      seatNumber: seatNumber,
    );
    final res = await _remoteSource.createTicket(request);
    return res.id;
  }
}
