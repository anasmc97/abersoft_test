import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:abersoft_test/core/domain/failures/failure.codegen.dart';
import 'package:abersoft_test/core/domain/usecases/use_case.dart';
import 'package:abersoft_test/feature/login/domain/entities/auth_entity.dart';
import 'package:abersoft_test/feature/login/domain/repositories/auth_repository.dart';

@lazySingleton
class LoginUsecase implements UseCase<Auth?, ParamsLogin> {
  final AuthRepository repository;

  LoginUsecase(this.repository);

  @override
  Future<Either<Failure, Auth?>> call(ParamsLogin params) async {
    try {
      final response = await repository.login(params.email, params.password);
      if (response == null) {
        return left(const Failure.serverFailure(
            message: 'Cant find email on database'));
      }
      return right(response);
    } catch (e, st) {
      log(e.toString(), stackTrace: st);
      return left(const Failure.serverFailure(message: 'Cant login'));
    }
  }
}

class ParamsLogin extends Equatable {
  final String email;
  final String password;

  const ParamsLogin({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}
