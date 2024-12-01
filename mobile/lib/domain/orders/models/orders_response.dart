import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:railways/domain/orders/models/order_model.dart';

part 'orders_response.freezed.dart';
part 'orders_response.g.dart';

@freezed
class OrdersResponse with _$OrdersResponse {
  const factory OrdersResponse({
    @JsonKey() required List<OrderModel> data,
  }) = _OrdersResponse;

  factory OrdersResponse.fromJson(Map<String, Object?> json) =>
      _$OrdersResponseFromJson(json);
}
