import 'package:railways/domain/account/models/account_model.dart';
import 'package:railways/domain/carriages/models/carriage_id_request.dart';
import 'package:railways/domain/carriages/models/carriage_model.dart';
import 'package:railways/domain/carriages/models/carriages_request.dart';
import 'package:railways/domain/carriages/models/carriages_response.dart';
import 'package:railways/domain/login/models/login_request.dart';
import 'package:railways/domain/login/models/login_response.dart';
import 'package:railways/domain/login/models/register_request.dart';
import 'package:railways/domain/login/models/register_response.dart';
import 'package:railways/domain/orders/models/discounts_request.dart';
import 'package:railways/domain/orders/models/discounts_response.dart';
import 'package:railways/domain/orders/models/order_model.dart';
import 'package:railways/domain/orders/models/orders_request.dart';
import 'package:railways/domain/orders/models/orders_response.dart';
import 'package:railways/domain/orders/models/payment_request.dart';
import 'package:railways/domain/orders/models/payment_response.dart';
import 'package:railways/domain/search/models/cities_request.dart';
import 'package:railways/domain/search/models/cities_response.dart';
import 'package:railways/domain/search/models/routes_request.dart';
import 'package:railways/domain/search/models/routes_response.dart';
import 'package:railways/domain/tickets/models/tickets_request.dart';
import 'package:railways/domain/tickets/models/tickets_response.dart';

abstract class RemoteSource {
  Future<LoginResponse> login(LoginRequest loginRequest);
  Future<RegisterResponse> register(RegisterRequest registerRequest);

  Future<CitiesResponse> fetchCities(CitiesRequest citiesRequest);
  Future<RoutesResponse> fetchRoutes(RoutesRequest routesRequest);
  Future<RoutesResponse> fetchAllRoutes();

  Future<CarriageModel> fetchCarriageById(CarriageIdRequest carriageIdRequest);
  Future<CarriagesResponse> fetchCarriages(CarriagesRequest carriagesRequest);

  Future<TicketsResponse> createTicket(TicketsRequest ticketsRequest);

  Future<OrdersResponse> fetchOrders(OrdersRequest ordersRequest);
  Future<PaymentResponse> payForOrder(PaymentRequest paymentRequest);
  Future<OrderModel> updateOrderStatus(
    int id,
    String status, [
    int? discountId,
  ]);
  Future<DiscountResponse> fetchDiscounts(DiscountsRequest discountsRequest);

  Future<AccountModel> fetchAccount(int id);
}
