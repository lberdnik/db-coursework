import 'package:railways/data/core/const.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedProvider {
  final SharedHelper _sharedHelper;

  SharedProvider(this._sharedHelper);

  String getJwtAccess() {
    return _sharedHelper.getString(
      ConstPreferences.jwtAccess,
      defaultValue: '',
    );
  }

  Future<void> setJwtAccess({required String jwt}) async {
    await _sharedHelper.setString(
      ConstPreferences.jwtAccess,
      value: jwt,
    );
  }

  String getJwtRefresh() {
    return _sharedHelper.getString(
      ConstPreferences.jwtRefresh,
      defaultValue: '',
    );
  }

  Future<void> setJwtRefresh({required String jwt}) async {
    await _sharedHelper.setString(
      ConstPreferences.jwtRefresh,
      value: jwt,
    );
  }

  String getAccountEmail() {
    return _sharedHelper.getString(
      ConstPreferences.accountEmail,
      defaultValue: '',
    );
  }

  Future<void> setAccountEmail({required String email}) async {
    await _sharedHelper.setString(
      ConstPreferences.accountEmail,
      value: email,
    );
  }
}

class SharedHelper {
  final SharedPreferences _prefs;

  SharedHelper(this._prefs);

  Future<void> setString(String key, {required String value}) async {
    await _prefs.setString(key, value);
  }

  String getString(String key, {required String defaultValue}) {
    return _prefs.getString(key) ?? defaultValue;
  }
}
