import 'package:railways/domain/account/models/account_model.dart';

abstract class AccountRepository {
  Future<AccountModel> fetchAccount(int id);
}
