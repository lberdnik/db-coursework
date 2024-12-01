import 'package:railways/domain/orders/models/discount_model.dart';
import 'package:railways/domain/orders/models/order_model.dart';

abstract class OrdersRepository {
  Future<List<OrderModel>> fetchOrders();
  Future<String> payForOrder(int orderId, int? discountId);
  Future<OrderModel> updateOrderStatus(
    int orderId,
    String status, [
    int? discountId,
  ]);
  Future<List<DiscountModel>> fetchDiscounts();
}
