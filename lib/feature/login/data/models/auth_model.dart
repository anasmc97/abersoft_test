import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:abersoft_test/feature/login/domain/entities/auth_entity.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
class AuthModel with _$AuthModel {
  factory AuthModel({
    required String token,
  }) = _AuthModel;

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);

  factory AuthModel.fromDomain(Auth form) => AuthModel(token: form.token);
}

extension AuthModelX on AuthModel {
  Auth toDomain() => Auth(token: token);
}
