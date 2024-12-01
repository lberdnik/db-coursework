import 'package:railways/domain/orders/models/discount_model.dart';
import 'package:railways/domain/orders/models/discounts_request.dart';
import 'package:railways/domain/orders/models/order_model.dart';
import 'package:railways/domain/orders/models/orders_request.dart';
import 'package:railways/domain/orders/models/payment_request.dart';
import 'package:railways/domain/orders/repository/oders_repository.dart';
import 'package:railways/domain/remote/remote_source.dart';

class OrdersRepositoryImpl implements OrdersRepository {
  final RemoteSource _remoteSource;

  const OrdersRepositoryImpl(this._remoteSource);

  @override
  Future<List<OrderModel>> fetchOrders() async {
    const request = OrdersRequest();
    final res = await _remoteSource.fetchOrders(request);
    return res.data;
  }

  @override
  Future<String> payForOrder(int orderId, int? discountId) async {
    final request = PaymentRequest(
      id: orderId,
      discountId: discountId,
    );
    final res = await _remoteSource.payForOrder(request);
    return res.clientSecret;
  }

  @override
  Future<OrderModel> updateOrderStatus(
    int orderId,
    String status,
    [int? discountId,]
  ) async {
    final res = await _remoteSource.updateOrderStatus(
      orderId,
      status,
      discountId,
    );
    return res;
  }

  @override
  Future<List<DiscountModel>> fetchDiscounts() async {
    const request = DiscountsRequest();
    final res = await _remoteSource.fetchDiscounts(request);
    return res.data;
  }
}
