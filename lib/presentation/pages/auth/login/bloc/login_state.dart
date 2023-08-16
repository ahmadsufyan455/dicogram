part of 'login_bloc.dart';

@immutable
sealed class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

final class LoginInitial extends LoginState {}

final class LoginLoding extends LoginState {}

final class LoginSuccess extends LoginState {
  final String? token;
  const LoginSuccess({this.token});

  @override
  List<Object> get props => [token!];
}

final class LoginError extends LoginState {
  final String error;
  const LoginError(this.error);

  @override
  List<Object> get props => [error];
}
