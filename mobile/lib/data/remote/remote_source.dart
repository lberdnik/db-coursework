import 'package:dio/dio.dart';
import 'package:railways/data/core/shared_provider.dart';
import 'package:railways/domain/account/models/account_model.dart';
import 'package:railways/domain/carriages/models/carriages_request.dart';
import 'package:railways/domain/carriages/models/carriage_model.dart';
import 'package:railways/domain/carriages/models/carriage_id_request.dart';
import 'package:railways/domain/carriages/models/carriages_response.dart';
import 'package:railways/domain/login/models/login_request.dart';
import 'package:railways/domain/login/models/login_response.dart';
import 'package:railways/domain/login/models/register_request.dart';
import 'package:railways/domain/login/models/register_response.dart';
import 'package:railways/domain/orders/models/discounts_response.dart';
import 'package:railways/domain/orders/models/discounts_request.dart';
import 'package:railways/domain/orders/models/order_model.dart';
import 'package:railways/domain/orders/models/orders_response.dart';
import 'package:railways/domain/orders/models/orders_request.dart';
import 'package:railways/domain/orders/models/payment_response.dart';
import 'package:railways/domain/orders/models/payment_request.dart';
import 'package:railways/domain/remote/remote_source.dart';
import 'package:railways/domain/search/models/cities_response.dart';
import 'package:railways/domain/search/models/cities_request.dart';
import 'package:railways/domain/search/models/routes_response.dart';
import 'package:railways/domain/search/models/routes_request.dart';
import 'package:railways/domain/tickets/models/tickets_response.dart';
import 'package:railways/domain/tickets/models/tickets_request.dart';
import 'package:railways/injection.dart';

class RemoteSourcImpl implements RemoteSource {
  final Dio _dio;
  final SharedProvider _sharedProvider;

  RemoteSourcImpl(this._dio, this._sharedProvider) {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          if (!options.path.contains('users/login/') &&
              !options.path.contains('users/accounts/signup/') &&
              !options.path.contains('users/token/refresh/')) {
            final jwt = _sharedProvider.getJwtAccess();
            options.headers['Authorization'] = 'Bearer $jwt';
          }
          return handler.next(options);
        },
        onError: (e, handler) async {
          if (e.response?.statusCode == 401) {
            final refreshJwt = _sharedProvider.getJwtRefresh();
            if (refreshJwt.isNotEmpty) {
              final newJwt = await refreshToken(refreshJwt);
              e.response?.requestOptions.headers['Authorization'] =
                  'Bearer $newJwt';
              return handler.resolve(
                await retryRequest(e.response!.requestOptions),
              );
            }
          }
          handler.next(e);
        },
      ),
    );
  }

  Future<String> refreshToken(String refreshJwt) async {
    final response = await _dio.post(
      'users/token/refresh/',
      data: {
        'refresh': refreshJwt,
      },
    );
    if (response.statusCode == 200) {
      final data = response.data;
      await _sharedProvider.setJwtAccess(jwt: data['access']);
      await _sharedProvider.setJwtRefresh(jwt: data['refresh']);
    }
    return response.data['access'];
  }

  Future<Response<dynamic>> retryRequest(RequestOptions requestOptions) async {
    var headers = Map<String, dynamic>.from(requestOptions.headers);
    headers['Authorization'] = 'Bearer ${_sharedProvider.getJwtAccess()}';
    final options = Options(
      method: requestOptions.method,
      headers: headers,
    );
    return _dio.request<dynamic>(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: options,
    );
  }

  @override
  Future<LoginResponse> login(LoginRequest loginRequest) async {
    try {
      final response = await _dio.post(
        'users/login/',
        data: loginRequest.toJson(),
      );
      return LoginResponse.fromJson(response.data);
    } on DioError catch (e) {
      logger.e(
        'login error: ${e.runtimeType}, ${e.message}',
      );
      throw 'Pudge';
    }
  }

  @override
  Future<RegisterResponse> register(RegisterRequest registerRequest) async {
    try {
      final response = await _dio.post(
        'users/accounts/signup/',
        data: registerRequest.toJson(),
      );
      return RegisterResponse.fromJson(response.data);
    } on DioError catch (e) {
      logger.e(
        'register error: ${e.runtimeType}, ${e.message}',
      );
      throw 'Pudge';
    }
  }

  @override
  Future<CitiesResponse> fetchCities(CitiesRequest citiesRequest) async {
    try {
      final response = await _dio.get('arrival_points/');
      return CitiesResponse.fromJson(response.data);
    } on DioError catch (e) {
      logger.e(
        'fetchCities error: ${e.runtimeType}, ${e.message}',
      );
      throw 'Pudge';
    }
  }

  @override
  Future<RoutesResponse> fetchRoutes(RoutesRequest routesRequest) async {
    try {
      final response = await _dio.post(
        'routes/search/',
        data: routesRequest.toJson(),
      );
      return RoutesResponse.fromJson(response.data);
    } on DioError catch (e) {
      logger.e(
        'fetchRoutes error: ${e.runtimeType}, ${e.message}',
      );
      throw 'Pudge';
    }
  }

  @override
  Future<RoutesResponse> fetchAllRoutes() async {
    try {
      final response = await _dio.get('routes/');
      return RoutesResponse.fromJson(response.data);
    } on DioError catch (e) {
      logger.e(
        'fetchAllRoutes error: ${e.runtimeType}, ${e.message}',
      );
      throw 'Pudge';
    }
  }

  @override
  Future<CarriageModel> fetchCarriageById(
    CarriageIdRequest carriageIdRequest,
  ) async {
    try {
      final response = await _dio.get('carriages/${carriageIdRequest.id}');
      return CarriageModel.fromJson(response.data);
    } on DioError catch (e) {
      logger.e(
        'fetchCarriageById error: ${e.runtimeType}, ${e.message}',
      );
      throw 'Pudge';
    }
  }

  @override
  Future<CarriagesResponse> fetchCarriages(
    CarriagesRequest carriagesRequest,
  ) async {
    try {
      final response = await _dio.get(
        'routes/${carriagesRequest.id}/carriages/',
      );
      return CarriagesResponse.fromJson(response.data);
    } on DioError catch (e) {
      logger.e(
        'fetchCarriages error: ${e.runtimeType}, ${e.message}',
      );
      throw 'Pudge';
    }
  }

  @override
  Future<TicketsResponse> createTicket(TicketsRequest ticketsRequest) async {
    try {
      final response = await _dio.post(
        'tickets/',
        data: ticketsRequest.toJson(),
      );
      return TicketsResponse.fromJson(response.data);
    } on DioError catch (e) {
      logger.e(
        'createTicket error: ${e.runtimeType}, ${e.message}',
      );
      throw 'Pudge';
    }
  }

  @override
  Future<OrdersResponse> fetchOrders(OrdersRequest ordersRequest) async {
    try {
      final response = await _dio.get(
        'orders/',
      );
      return OrdersResponse.fromJson(response.data);
    } on DioError catch (e) {
      logger.e(
        'fetchOrders error: ${e.runtimeType}, ${e.message}',
      );
      throw 'Pudge';
    }
  }

  @override
  Future<PaymentResponse> payForOrder(PaymentRequest paymentRequest) async {
    try {
      final response = await _dio.post(
        'orders/${paymentRequest.id}/buy/',
        data: {
          if (paymentRequest.discountId != null)
            'discount_id': paymentRequest.discountId,
        },
      );
      return PaymentResponse.fromJson(response.data);
    } on DioError catch (e) {
      logger.e(
        'payForOrder error: ${e.runtimeType}, ${e.message}',
      );
      throw 'Pudge';
    }
  }

  @override
  Future<OrderModel> updateOrderStatus(
    int id,
    String status, [
    int? discountId,
  ]) async {
    try {
      final response = await _dio.patch(
        'orders/$id/',
        data: {
          'order_status': status,
          if (discountId != null) 'discount_id': discountId,
        },
      );
      return OrderModel.fromJson(response.data);
    } on DioError catch (e) {
      logger.e(
        'updateOrderStatus error: ${e.runtimeType}, ${e.message}',
      );
      throw 'Pudge';
    }
  }

  @override
  Future<DiscountResponse> fetchDiscounts(
    DiscountsRequest discountsRequest,
  ) async {
    try {
      final response = await _dio.get(
        'users/discounts/',
      );
      return DiscountResponse.fromJson(response.data);
    } on DioError catch (e) {
      logger.e(
        'fetchDiscount error: ${e.runtimeType}, ${e.message}',
      );
      throw 'Pudge';
    }
  }

  @override
  Future<AccountModel> fetchAccount(int id) async {
    try {
      final response = await _dio.get(
        'users/accounts/$id/',
      );
      return AccountModel.fromJson(response.data);
    } on DioError catch (e) {
      logger.e(
        'fetchAccount error: ${e.runtimeType}, ${e.message}',
      );
      throw 'Pudge';
    }
  }
}
