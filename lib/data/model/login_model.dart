import 'package:dicogram/domain/entity/login_entity.dart';
import 'package:equatable/equatable.dart';

class LoginModel extends LoginEntity with EquatableMixin {
  LoginModel({
    required bool error,
    required String message,
    required LoginResultModel loginResult,
  }) : super(error: error, message: message, loginResult: loginResult);

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        error: json['error'],
        message: json['message'],
        loginResult: LoginResultModel.fromJson(json['loginResult']),
      );
}

class LoginResultModel extends LoginResultEntity with EquatableMixin {
  LoginResultModel({
    required String userId,
    required String name,
    required String token,
  }) : super(userId: userId, name: name, token: token);

  factory LoginResultModel.fromJson(Map<String, dynamic> json) =>
      LoginResultModel(
        userId: json['userId'],
        name: json['name'],
        token: json['token'],
      );
}

class RequestLogin {
  final String email;
  final String password;

  RequestLogin({required this.email, required this.password});

  Map<String, dynamic> toJson() => {
        'email': email,
        'password': password,
      };
}
