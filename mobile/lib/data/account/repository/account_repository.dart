import 'package:railways/domain/account/models/account_model.dart';
import 'package:railways/domain/account/repository/account_repository.dart';
import 'package:railways/domain/remote/remote_source.dart';

class AccountRepositoryImpl implements AccountRepository {
  final RemoteSource _remoteSource;

  const AccountRepositoryImpl(this._remoteSource);

  @override
  Future<AccountModel> fetchAccount(int id) async {
    final res = await _remoteSource.fetchAccount(id);
    return res;
  }
}
