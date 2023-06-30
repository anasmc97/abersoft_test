import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:abersoft_test/core/domain/failures/failure.codegen.dart';
import 'package:abersoft_test/feature/login/domain/entities/auth_entity.dart';

part 'auth_state.freezed.dart';

enum Status { initial, loading, success, error }

@freezed
abstract class AuthState implements _$AuthState {
  const factory AuthState({
    required Auth auth,
    required Option<Either<Failure, Auth>> authOrFailureOption,
    required Status status,
  }) = _AuthState;

  factory AuthState.initial() {
    return AuthState(
      auth: const Auth(token: ''),
      status: Status.initial,
      authOrFailureOption: none(),
    );
  }
}
