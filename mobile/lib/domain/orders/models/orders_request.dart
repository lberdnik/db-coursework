import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_request.freezed.dart';
part 'orders_request.g.dart';

@freezed
class OrdersRequest with _$OrdersRequest {
  const factory OrdersRequest() = _OrdersRequest;

  factory OrdersRequest.fromJson(Map<String, Object?> json) =>
      _$OrdersRequestFromJson(json);
}
