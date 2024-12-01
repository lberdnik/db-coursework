import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:railways/domain/login/repository/login_repository.dart';
import 'package:railways/injection.dart';
import 'package:railways/presentation/core/const.dart';
import 'package:railways/presentation/core/router.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepository loginRepository;

  LoginCubit(this.loginRepository) : super(const LoginState());

  Future<void> login(String login, String password) async {
    try {
      logger.d('Try login with $login: $password');
      final jwt = await loginRepository.login(login, password);
      logger.d('Login jwt: $jwt');
      getIt.get<RouterService>().router.go(Routes.search);
    } catch (e) {
      emit(state.copyWith(error: 'No user found'));
    }
  }

  void cleanError() {
    emit(state.copyWith(error: null));
  }
}
