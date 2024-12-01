import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:railways/domain/account/models/account_model.dart';
import 'package:railways/domain/account/repository/account_repository.dart';

part 'profile_cubit.freezed.dart';
part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final AccountRepository _accountRepository;

  ProfileCubit(this._accountRepository) : super(const ProfileState());

  Future<void> init() async {
    // final account = await _accountRepository.fetchAccount();
    // emit(
    //   state.copyWith(
    //     account: account,
    //     isLoading: false,
    //   ),
    // );
  }
}
