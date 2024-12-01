import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:railways/domain/search/models/arrival_point_model.dart';

part 'ticket_model.freezed.dart';
part 'ticket_model.g.dart';

@freezed
class TicketModel with _$TicketModel {
  const factory TicketModel({
    required int id,
    required int carriage,
    required int seatNumber,
    required String price,
    required ArrivalPointModel departurePoint,
    required ArrivalPointModel arrivalPoint,
  }) = _TicketModel;

  factory TicketModel.fromJson(Map<String, Object?> json) =>
      _$TicketModelFromJson(json);
}
