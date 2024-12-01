import 'package:go_router/go_router.dart';
import 'package:railways/data/core/shared_provider.dart';
import 'package:railways/domain/carriages/models/carriage_model.dart';
import 'package:railways/domain/orders/models/order_model.dart';
import 'package:railways/domain/search/models/arrival_point_model.dart';
import 'package:railways/domain/search/models/route_model.dart';
import 'package:railways/presentation/core/const.dart';
import 'package:railways/presentation/home/board/board_page.dart';
import 'package:railways/presentation/home/orders/cubit/orders_cubit.dart';
import 'package:railways/presentation/home/orders/orders_page.dart';
import 'package:railways/presentation/home/home_page.dart';
import 'package:railways/presentation/home/search/search_page.dart';
import 'package:railways/presentation/login/login_page.dart';
import 'package:railways/presentation/payment/payment_page.dart';
import 'package:railways/presentation/register/register_page.dart';
import 'package:railways/presentation/route/route_page.dart';
import 'package:railways/presentation/ticket/ticket_page.dart';

class RouterService {
  final SharedProvider _sharedProvider;
  late final GoRouter router;

  RouterService(this._sharedProvider) {
    router = GoRouter(
      initialLocation:
          _sharedProvider.getJwtAccess().isEmpty ? Routes.login : Routes.search,
      routes: [
        GoRoute(
          path: Routes.login,
          builder: (context, state) {
            return const LoginPage();
          },
        ),
        GoRoute(
          path: Routes.register,
          builder: (context, state) {
            return const RegisterPage();
          },
        ),
        GoRoute(
          path: Routes.route,
          builder: (context, state) {
            final data = state.extra as Map<String, dynamic>;
            return RoutePage(
              route: data['route'] as RouteModel,
              departurePoint: data['departurePoint'] as ArrivalPointModel?,
              arrivalPoint: data['arrivalPoint'] as ArrivalPointModel?,
            );
          },
        ),
        GoRoute(
          path: Routes.ticket,
          builder: (context, state) {
            final data = state.extra as Map<String, dynamic>;
            return TicketPage(
              departurePoint: data['departurePoint'] as ArrivalPointModel,
              arrivalPoint: data['arrivalPoint'] as ArrivalPointModel,
              carriages: data['carriages'] as List<CarriageModel>,
            );
          },
        ),
        GoRoute(
          path: Routes.payment,
          builder: (context, state) {
            final data = state.extra as Map<String, dynamic>;
            return PaymentPage(
              order: data['order'] as OrderModel,
              ordersCubit: data['ordersCubit'] as OrdersCubit,
            );
          },
        ),
        ShellRoute(
          builder: (context, state, child) {
            return HomePage(child: child);
          },
          routes: [
            GoRoute(
              path: Routes.search,
              pageBuilder: (context, state) => const NoTransitionPage(
                child: SearchPage(),
              ),
            ),
            GoRoute(
              path: Routes.board,
              pageBuilder: (context, state) => const NoTransitionPage(
                child: BoardPage(),
              ),
            ),
            GoRoute(
              path: Routes.orders,
              pageBuilder: (context, state) => const NoTransitionPage(
                child: OrdersPage(),
              ),
            ),
            // GoRoute(
            //   path: Routes.profile,
            //   pageBuilder: (context, state) => const NoTransitionPage(
            //     child: ProfilePage(),
            //   ),
            // ),
          ],
        ),
      ],
    );
  }
}
