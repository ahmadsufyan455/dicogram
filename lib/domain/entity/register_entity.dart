import 'package:dicogram/data/model/register/register_model.dart';
import 'package:equatable/equatable.dart';

class RegisterEntity extends Equatable {
  final bool error;
  final String message;

  const RegisterEntity({required this.error, required this.message});

  factory RegisterEntity.fromModel(RegisterModel model) {
    return RegisterEntity(error: model.error, message: model.message);
  }

  @override
  List<Object?> get props => [error, message];
}
