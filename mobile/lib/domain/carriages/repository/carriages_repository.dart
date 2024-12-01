import 'package:railways/domain/carriages/models/carriage_model.dart';

abstract class CarriagesRepository {
  Future<CarriageModel> getCarriageById(int id);
  Future<List<CarriageModel>> getCarriages(int routeId);
}
