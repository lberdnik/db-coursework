import 'package:railways/data/core/shared_provider.dart';
import 'package:railways/domain/login/models/login_request.dart';
import 'package:railways/domain/login/models/register_request.dart';
import 'package:railways/domain/login/repository/login_repository.dart';
import 'package:railways/domain/remote/remote_source.dart';

class LoginRepositoryImpl implements LoginRepository {
  final RemoteSource _remoteSource;
  final SharedProvider _sharedProvider;

  const LoginRepositoryImpl(this._remoteSource, this._sharedProvider);

  @override
  Future<String> login(
    String email,
    String password,
  ) async {
    final request = LoginRequest(
      email: email,
      password: password,
    );
    final res = await _remoteSource.login(request);
    _sharedProvider.setJwtAccess(jwt: res.access);
    _sharedProvider.setJwtRefresh(jwt: res.refresh);
    return res.access;
  }

  @override
  Future<void> register(
    String email,
    String password,
    String lastName,
    String firstName,
  ) async {
    final request = RegisterRequest(
      email: email,
      password: password,
      firstName: firstName,
      lastName: lastName,
      username: email,
    );
    await _sharedProvider.setAccountEmail(email: email);
    await _remoteSource.register(request);
    return;
  }
}
