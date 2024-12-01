import 'package:railways/domain/carriages/models/carriage_id_request.dart';
import 'package:railways/domain/carriages/models/carriage_model.dart';
import 'package:railways/domain/carriages/models/carriages_request.dart';
import 'package:railways/domain/carriages/repository/carriages_repository.dart';
import 'package:railways/domain/remote/remote_source.dart';

class CarriagesRepositoryImpl implements CarriagesRepository {
  final RemoteSource _remoteSource;

  const CarriagesRepositoryImpl(this._remoteSource);

  @override
  Future<CarriageModel> getCarriageById(int id) async {
    final request = CarriageIdRequest(id: id);
    final res = await _remoteSource.fetchCarriageById(request);
    return res;
  }

  @override
  Future<List<CarriageModel>> getCarriages(int routeId) async {
    final request = CarriagesRequest(id: routeId);
    final res = await _remoteSource.fetchCarriages(request);
    return res.data;
  }
}
