import 'package:injectable/injectable.dart';
import 'package:abersoft_test/feature/login/data/datasources/remote/auth_remote_data_source.dart';
import 'package:abersoft_test/feature/login/data/models/auth_model.dart';
import 'package:abersoft_test/feature/login/domain/entities/auth_entity.dart';
import 'package:abersoft_test/feature/login/domain/repositories/auth_repository.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  AuthRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Auth?> login(String email, String password) {
    return remoteDataSource
        .login(email, password)
        .then((value) => value?.toDomain());
  }
}
