part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class LoginLoding extends LoginState {}

class LoginSuccess extends LoginState {
  final bool isLogin;
  const LoginSuccess({this.isLogin = false});
}

class LoginError extends LoginState {}
