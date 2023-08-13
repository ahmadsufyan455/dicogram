part of 'login_bloc.dart';

@immutable
sealed class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class LoginLoding extends LoginState {}

class LoginSuccess extends LoginState {
  final String? token;
  const LoginSuccess({this.token});

  @override
  List<Object> get props => [token!];
}

class LoginError extends LoginState {
  final String error;
  const LoginError(this.error);

  @override
  List<Object> get props => [error];
}
