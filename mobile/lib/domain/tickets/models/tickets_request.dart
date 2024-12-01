import 'package:freezed_annotation/freezed_annotation.dart';

part 'tickets_request.freezed.dart';
part 'tickets_request.g.dart';

@freezed
class TicketsRequest with _$TicketsRequest {
  const factory TicketsRequest({
    required int departurePoint,
    required int arrivalPoint,
    required int carriage,
    required int seatNumber,
  }) = _TicketsRequest;

  factory TicketsRequest.fromJson(Map<String, Object?> json) =>
      _$TicketsRequestFromJson(json);
}
