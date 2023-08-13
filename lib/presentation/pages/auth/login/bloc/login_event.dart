part of 'login_bloc.dart';

@immutable
sealed class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class Login extends LoginEvent {
  final Map<String, dynamic> data;
  const Login(this.data);

  @override
  List<Object> get props => [data];
}

class Logout extends LoginEvent {}

class GetUser extends LoginEvent {}
