import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jwt_decode/jwt_decode.dart';
import 'package:railways/data/core/shared_provider.dart';
import 'package:railways/domain/account/models/account_model.dart';
import 'package:railways/domain/account/repository/account_repository.dart';
import 'package:railways/domain/orders/models/discount_model.dart';
import 'package:railways/domain/orders/repository/oders_repository.dart';
import 'package:railways/presentation/core/const.dart';
import 'package:railways/presentation/core/router.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final RouterService _routerService;
  final OrdersRepository _ordersRepository;
  final AccountRepository _accountRepository;
  final SharedProvider _sharedProvider;

  static const tabs = [
    Routes.search,
    Routes.board,
    Routes.orders,
    // Routes.profile,
  ];

  HomeCubit(
    this._routerService,
    this._ordersRepository,
    this._accountRepository,
    this._sharedProvider,
  ) : super(
          const HomeState(
            currentIndex: 0,
            tabs: tabs,
          ),
        );

  void goToIndex(int index) {
    emit(state.copyWith(currentIndex: index));
    _routerService.router.go(state.tabs[index]);
  }

  void goToNamed(String location) {
    final index = state.tabs.indexOf(location);
    emit(state.copyWith(currentIndex: index));
    _routerService.router.go(location);
  }

  Future<void> initDiscounts() async {
    final discounts = await _ordersRepository.fetchDiscounts();
    emit(state.copyWith(discounts: discounts));
  }

  Future<void> initAccount() async {
    final jwt = _sharedProvider.getJwtAccess();
    final payload = Jwt.parseJwt(jwt);
    final id = payload['user_id'];
    final account = await _accountRepository.fetchAccount(id);
    emit(state.copyWith(account: account));
    emit(state.copyWith(isAccountShown: true));
  }
}
