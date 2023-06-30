import 'package:abersoft_test/feature/login/domain/entities/auth_entity.dart';

abstract class AuthRepository {
  Future<Auth?> login(String email, String password);
}
