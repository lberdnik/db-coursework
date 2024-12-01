import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:railways/domain/login/repository/login_repository.dart';
import 'package:railways/injection.dart';
import 'package:railways/presentation/core/router.dart';

part 'register_cubit.freezed.dart';
part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final LoginRepository loginRepository;

  RegisterCubit(this.loginRepository) : super(const RegisterState());

  Future<void> register(
    String email,
    String password,
    String lastName,
    String firstName,
  ) async {
    try {
      await loginRepository.register(email, password, lastName, firstName);
      getIt.get<RouterService>().router.pop();
    } catch (e) {
      emit(state.copyWith(error: 'Incorrect email'));
    }
  }

  void cleanError() {
    emit(state.copyWith(error: null));
  }
}
