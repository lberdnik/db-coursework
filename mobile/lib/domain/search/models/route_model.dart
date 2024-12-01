import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:railways/domain/search/models/arrival_point_model.dart';
import 'package:railways/domain/search/models/departure_city_model.dart';
import 'package:railways/domain/search/models/route_carriages_model.dart';

part 'route_model.freezed.dart';
part 'route_model.g.dart';

@freezed
class RouteModel with _$RouteModel {
  const factory RouteModel({
    required int id,
    required DepartureCityModel departureCity,
    required String departureTime,
    required List<ArrivalPointModel>? arrivalPoints,
    required RouteCarriagesModel carriages,
  }) = _RouteModel;

  factory RouteModel.fromJson(Map<String, Object?> json) =>
      _$RouteModelFromJson(json);
}
