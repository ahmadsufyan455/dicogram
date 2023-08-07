import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<Login>((event, emit) async {
      emit(LoginLoding());
      try {
        final prefs = await SharedPreferences.getInstance();
        await Future.delayed(const Duration(seconds: 2));
        prefs.setBool('is_login', true);
        emit(const LoginSuccess(isLogin: true));
      } catch (e) {
        emit(LoginError());
      }
    });

    on<Logout>((event, emit) async {
      emit(LoginLoding());
      try {
        final prefs = await SharedPreferences.getInstance();
        await Future.delayed(const Duration(seconds: 2));
        prefs.remove('is_login');
        emit(const LoginSuccess(isLogin: false));
      } catch (e) {
        emit(LoginError());
      }
    });

    on<GetUser>((event, emit) async {
      emit(LoginLoding());
      try {
        final prefs = await SharedPreferences.getInstance();
        await Future.delayed(const Duration(seconds: 2));
        final isLogin = prefs.getBool('is_login');
        emit(LoginSuccess(isLogin: isLogin ?? false));
      } catch (e) {
        emit(LoginError());
      }
    });
  }
}
