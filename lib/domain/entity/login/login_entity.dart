import 'package:dicogram/data/model/login/login_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_entity.freezed.dart';

@freezed
class LoginEntity with _$LoginEntity {
  const factory LoginEntity({
    required bool error,
    required String message,
    required LoginResultEntity loginResult,
  }) = _LoginEntity;

  factory LoginEntity.fromModel(LoginModel model) {
    final login = model.loginResult;
    final loginResultEntity = LoginResultEntity(
      userId: login.userId,
      name: login.name,
      token: login.token,
    );

    return LoginEntity(
      error: model.error,
      message: model.message,
      loginResult: loginResultEntity,
    );
  }
}

@freezed
class LoginResultEntity with _$LoginResultEntity {
  const factory LoginResultEntity({
    required String userId,
    required String name,
    required String token,
  }) = _LoginResultEntity;
}
