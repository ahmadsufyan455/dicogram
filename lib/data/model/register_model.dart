import 'package:dicogram/domain/entity/register_entity.dart';
import 'package:equatable/equatable.dart';

class RegisterModel extends RegisterEntity with EquatableMixin {
  RegisterModel({required bool error, required String message})
      : super(error: error, message: message);

  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      RegisterModel(error: json['error'], message: json['message']);
}

class RequestRegister {
  final String name;
  final String email;
  final String password;

  RequestRegister({
    required this.name,
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'password': password,
      };
}
