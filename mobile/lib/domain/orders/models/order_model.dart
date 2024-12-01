import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:railways/domain/tickets/models/ticket_model.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
class OrderModel with _$OrderModel {
  const factory OrderModel({
    required int id,
    required String orderStatus,
    String? totalPrice,
    List<TicketModel>? orderedTickets,
    int? user,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, Object?> json) =>
      _$OrderModelFromJson(json);
}
