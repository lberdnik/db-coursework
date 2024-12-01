import 'package:railways/domain/remote/remote_source.dart';
import 'package:railways/domain/search/models/cities_request.dart';
import 'package:railways/domain/search/models/city_model.dart';
import 'package:railways/domain/search/models/route_model.dart';
import 'package:railways/domain/search/models/routes_request.dart';
import 'package:railways/domain/search/repository/search_repository.dart';

class SearchRepositoryImpl implements SearchRepository {
  final RemoteSource _remoteSource;

  const SearchRepositoryImpl(this._remoteSource);

  @override
  Future<List<CityModel>> fetchAvailableCities() async {
    const request = CitiesRequest();
    final res = await _remoteSource.fetchCities(request);
    return res.data;
  }

  @override
  Future<List<RouteModel>> searchRoutes({
    required int departureCityId,
    required int arrivalCityId,
    required String departureDay,
  }) async {
    final request = RoutesRequest(
      arrivalCity: arrivalCityId,
      departureCity: departureCityId,
      departureDay: departureDay,
    );
    final res = await _remoteSource.fetchRoutes(request);
    return res.data;
  }

  @override
  Future<List<RouteModel>> searchAllRoutes() async {
    final res = await _remoteSource.fetchAllRoutes();
    return res.data;
  }
}
