import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_entity.freezed.dart';

@freezed
class Auth with _$Auth {
  const factory Auth({
    required String token,
  }) = _Auth;
}
