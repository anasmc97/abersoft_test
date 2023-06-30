import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:abersoft_test/core/extensions/dartz_extensions.dart';
import 'package:abersoft_test/feature/login/domain/usecases/login_usecase.dart';
import 'package:abersoft_test/feature/login/presentation/blocs/auth_bloc/auth_event.dart';
import 'package:abersoft_test/feature/login/presentation/blocs/auth_bloc/auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._login) : super(AuthState.initial()) {
    on<Login>(_onLogin);
  }

  final LoginUsecase _login;

  FutureOr<void> _onLogin(
    Login event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(status: Status.loading));
    final result = await _login
        .call(ParamsLogin(email: event.email, password: event.password));
    if (result.isLeft()) {
      emit(
        state.copyWith(
            authOrFailureOption: optionOf(
              left(result.getLeft()!),
            ),
            status: Status.error),
      );
      emit(
        state.copyWith(status: Status.initial),
      );
    }
    if (result.isRight()) {
      emit(
        state.copyWith(
          authOrFailureOption: optionOf(
            right(result.getRight()!),
          ),
        ),
      );
      emit(
        state.copyWith(
          authOrFailureOption: none(),
          auth: result.getRight()!,
          status: Status.success,
        ),
      );
      emit(
        state.copyWith(status: Status.initial),
      );
    }
  }
}
