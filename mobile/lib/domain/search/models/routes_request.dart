import 'package:freezed_annotation/freezed_annotation.dart';

part 'routes_request.freezed.dart';
part 'routes_request.g.dart';

@freezed
class RoutesRequest with _$RoutesRequest {
  const factory RoutesRequest({
    required int departureCity,
    required int arrivalCity,
    required String departureDay,
  }) = _RoutesRequest;

  factory RoutesRequest.fromJson(Map<String, Object?> json) =>
      _$RoutesRequestFromJson(json);
}
