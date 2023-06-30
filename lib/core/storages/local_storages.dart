import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalStorage {
  Future<String?> getAuthToken();
  Future<void> setAuthToken(String authToken);
}

@LazySingleton(as: LocalStorage)
class LocalStorageImpl implements LocalStorage {
  const LocalStorageImpl(this._storage);
  final SharedPreferences _storage;
  static const _authToken = 'authToken';

  @override
  Future<String?> getAuthToken() {
    return Future.value(
      _storage.getString(_authToken),
    );
  }

  @override
  Future<void> setAuthToken(String authToken) async {
    await Future.value(
      _storage.setString(_authToken, authToken),
    );
  }
}
