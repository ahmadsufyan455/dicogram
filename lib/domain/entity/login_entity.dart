import 'package:dicogram/data/model/login/login_model.dart';
import 'package:equatable/equatable.dart';

class LoginEntity extends Equatable {
  final bool error;
  final String message;
  final LoginResultEntity loginResult;

  const LoginEntity({
    required this.error,
    required this.message,
    required this.loginResult,
  });

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

  @override
  List<Object?> get props => [error, message, loginResult];
}

class LoginResultEntity extends Equatable {
  final String userId;
  final String name;
  final String token;

  const LoginResultEntity({
    required this.userId,
    required this.name,
    required this.token,
  });

  @override
  List<Object?> get props => [userId, name, token];
}
