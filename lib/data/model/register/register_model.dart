import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'register_model.g.dart';

@JsonSerializable()
class RegisterModel extends Equatable {
  final bool error;
  final String message;
  const RegisterModel({
    required this.error,
    required this.message,
  });

  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterModelToJson(this);

  @override
  List<Object?> get props => [error, message];
}

@JsonSerializable()
class RequestRegister {
  final String name;
  final String email;
  final String password;

  RequestRegister({
    required this.name,
    required this.email,
    required this.password,
  });

  factory RequestRegister.fromJson(Map<String, dynamic> json) =>
      _$RequestRegisterFromJson(json);

  Map<String, dynamic> toJson() => _$RequestRegisterToJson(this);
}
