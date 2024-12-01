import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:railways/domain/search/models/route_model.dart';

part 'routes_response.freezed.dart';
part 'routes_response.g.dart';

@freezed
class RoutesResponse with _$RoutesResponse {
  const factory RoutesResponse({
    required List<RouteModel> data,
  }) = _RoutesResponse;

  factory RoutesResponse.fromJson(Map<String, Object?> json) =>
      _$RoutesResponseFromJson(json);
}
