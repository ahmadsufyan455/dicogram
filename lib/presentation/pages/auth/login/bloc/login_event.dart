part of 'login_bloc.dart';

@immutable
sealed class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

final class Login extends LoginEvent {
  final Map<String, dynamic> data;
  const Login(this.data);

  @override
  List<Object> get props => [data];
}

final class Logout extends LoginEvent {}

final class GetUser extends LoginEvent {}
