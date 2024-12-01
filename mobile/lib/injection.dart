import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:railways/data/account/repository/account_repository.dart';
import 'package:railways/data/carriages/repository/carriages_repository.dart';
import 'package:railways/data/core/shared_provider.dart';
import 'package:railways/data/login/repository/login_repository.dart';
import 'package:railways/data/orders/repository/orders_repository.dart';
import 'package:railways/data/remote/remote_source.dart';
import 'package:railways/data/search/repository/search_repository.dart';
import 'package:railways/data/tickets/repository/tickets_repository.dart';
import 'package:railways/domain/account/repository/account_repository.dart';
import 'package:railways/domain/carriages/repository/carriages_repository.dart';
import 'package:railways/domain/login/repository/login_repository.dart';
import 'package:railways/domain/orders/repository/oders_repository.dart';
import 'package:railways/domain/remote/remote_source.dart';
import 'package:railways/domain/search/repository/search_repository.dart';
import 'package:railways/domain/tickets/repository/tickets_repository.dart';
import 'package:railways/presentation/core/router.dart';
import 'package:railways/presentation/home/board/cubit/board_cubit.dart';
import 'package:railways/presentation/home/cubit/home_cubit.dart';
import 'package:railways/presentation/home/orders/cubit/orders_cubit.dart';
import 'package:railways/presentation/home/profile/cubit/profile_cubit.dart';
import 'package:railways/presentation/home/search/cubit/search_cubit.dart';
import 'package:railways/presentation/login/cubit/login_cubit.dart';
import 'package:railways/presentation/payment/cubit/payment_cubit.dart';
import 'package:railways/presentation/register/cubit/register_cubit.dart';
import 'package:railways/presentation/route/cubit/route_cubit.dart';
import 'package:railways/presentation/ticket/cubit/ticket_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

final logger = Logger();
final getIt = GetIt.instance;

Future<void> configureDependencies() async {
  final prefs = await SharedPreferences.getInstance();
  final sharedHelper = SharedHelper(prefs);
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://railway-xx-tickets.herokuapp.com/api/',
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
    ),
  );

  getIt
    ..registerSingleton<SharedProvider>(SharedProvider(sharedHelper))
    ..registerSingleton<RemoteSource>(RemoteSourcImpl(dio, getIt.get()))
    ..registerSingleton<RouterService>(RouterService(getIt.get()))
    ..registerSingleton<SearchRepository>(SearchRepositoryImpl(getIt.get()))
    ..registerSingleton<TicketsRepository>(TicketsRepositoryImpl(getIt.get()))
    ..registerSingleton<OrdersRepository>(OrdersRepositoryImpl(getIt.get()))
    ..registerSingleton<AccountRepository>(AccountRepositoryImpl(getIt.get()))
    ..registerSingleton<LoginRepository>(
      LoginRepositoryImpl(getIt.get(), getIt.get()),
    )
    ..registerSingleton<CarriagesRepository>(
      CarriagesRepositoryImpl(getIt.get()),
    )
    ..registerSingleton<HomeCubit>(
      HomeCubit(getIt.get(), getIt.get(), getIt.get(), getIt.get()),
    )
    ..registerFactory<LoginCubit>(() => LoginCubit(getIt.get()))
    ..registerFactory<RegisterCubit>(() => RegisterCubit(getIt.get()))
    ..registerFactory<SearchCubit>(() => SearchCubit(getIt.get()))
    ..registerFactory<RouteCubit>(() => RouteCubit(getIt.get()))
    ..registerFactory<BoardCubit>(() => BoardCubit(getIt.get()))
    ..registerFactory<TicketCubit>(() => TicketCubit(getIt.get()))
    ..registerFactory<OrdersCubit>(() => OrdersCubit(getIt.get()))
    ..registerFactory<PaymentCubit>(() => PaymentCubit(getIt.get()))
    ..registerFactory<ProfileCubit>(() => ProfileCubit(getIt.get()));
}
