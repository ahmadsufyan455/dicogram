import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_model.g.dart';

@JsonSerializable()
class LoginModel extends Equatable {
  final bool error;
  final String message;
  @JsonKey(name: 'loginResult')
  final LoginResultModel loginResult;

  const LoginModel({
    required this.error,
    required this.message,
    required this.loginResult,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginModelToJson(this);

  @override
  List<Object?> get props => [error, message, loginResult];
}

@JsonSerializable()
class LoginResultModel extends Equatable {
  final String userId;
  final String name;
  final String token;

  const LoginResultModel({
    required this.userId,
    required this.name,
    required this.token,
  });

  factory LoginResultModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResultModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResultModelToJson(this);

  @override
  List<Object?> get props => [userId, name, token];
}

@JsonSerializable()
class RequestLogin {
  final String email;
  final String password;

  factory RequestLogin.fromJson(Map<String, dynamic> json) =>
      _$RequestLoginFromJson(json);

  RequestLogin({required this.email, required this.password});

  Map<String, dynamic> toJson() => _$RequestLoginToJson(this);
}
