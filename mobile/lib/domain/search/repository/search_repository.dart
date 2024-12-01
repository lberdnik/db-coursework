import 'package:railways/domain/search/models/city_model.dart';
import 'package:railways/domain/search/models/route_model.dart';

abstract class SearchRepository {
  Future<List<CityModel>> fetchAvailableCities();
  Future<List<RouteModel>> searchAllRoutes();
  Future<List<RouteModel>> searchRoutes({
    required int departureCityId,
    required int arrivalCityId,
    required String departureDay,
  });
}
