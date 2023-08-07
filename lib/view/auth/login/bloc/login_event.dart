part of 'login_bloc.dart';

@immutable
abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class Login extends LoginEvent {}

class Logout extends LoginEvent {}

class GetUser extends LoginEvent {}
