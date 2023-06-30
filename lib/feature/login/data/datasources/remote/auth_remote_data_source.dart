import 'package:abersoft_test/core/storages/local_storages.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:abersoft_test/core/utils/constants.dart';
import 'package:abersoft_test/feature/login/data/models/auth_model.dart';

abstract class AuthRemoteDataSource {
  Future<AuthModel?> login(String email, String password);
}

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  AuthRemoteDataSourceImpl(this._storage);

  final LocalStorage _storage;
  @override
  Future<AuthModel?> login(String username, String password) async {
    const api = ConstantUrl.url + 'login';
    final dio = Dio();
    final data = {
      "username": username,
      "password": password,
    };
    Response response;
    try {
      response = await dio.post(api, data: data);
      if (response.statusCode == 200) {
        final body = response.data;
        final auth = AuthModel.fromJson(body);
        await _storage.setAuthToken(auth.token);
        return auth;
      } else {
        return null;
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      rethrow;
    }
  }
}
