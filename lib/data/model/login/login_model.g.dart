// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) => LoginModel(
      error: json['error'] as bool,
      message: json['message'] as String,
      loginResult: LoginResultModel.fromJson(
          json['loginResult'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginModelToJson(LoginModel instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'loginResult': instance.loginResult,
    };

LoginResultModel _$LoginResultModelFromJson(Map<String, dynamic> json) =>
    LoginResultModel(
      userId: json['userId'] as String,
      name: json['name'] as String,
      token: json['token'] as String,
    );

Map<String, dynamic> _$LoginResultModelToJson(LoginResultModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'name': instance.name,
      'token': instance.token,
    };

RequestLogin _$RequestLoginFromJson(Map<String, dynamic> json) => RequestLogin(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$RequestLoginToJson(RequestLogin instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
