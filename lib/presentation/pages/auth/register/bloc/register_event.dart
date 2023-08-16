part of 'register_bloc.dart';

@immutable
sealed class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object> get props => [];
}

final class Register extends RegisterEvent {
  final Map<String, dynamic> data;
  const Register(this.data);

  @override
  List<Object> get props => [data];
}
