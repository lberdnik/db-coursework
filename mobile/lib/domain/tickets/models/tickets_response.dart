import 'package:freezed_annotation/freezed_annotation.dart';

part 'tickets_response.freezed.dart';
part 'tickets_response.g.dart';

@freezed
class TicketsResponse with _$TicketsResponse {
  const factory TicketsResponse({
    required int id,
  }) = _TicketsResponse;

  factory TicketsResponse.fromJson(Map<String, Object?> json) =>
      _$TicketsResponseFromJson(json);
}
