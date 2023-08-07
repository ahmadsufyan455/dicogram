import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../data/source/story_repository.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final StoryRepository _storyRepository;

  LoginBloc(this._storyRepository) : super(LoginInitial()) {
    on<Login>((event, emit) async {
      emit(LoginLoding());
      try {
        final prefs = await SharedPreferences.getInstance();
        final result = await _storyRepository.login(event.data);
        prefs.setString('token', result.loginResult?.token ?? '');
        emit(const LoginSuccess());
      } catch (e) {
        emit(LoginError(e.toString()));
      }
    });

    on<Logout>((event, emit) async {
      emit(LoginLoding());
      try {
        final prefs = await SharedPreferences.getInstance();
        await Future.delayed(const Duration(seconds: 2));
        prefs.remove('token');
        emit(const LoginSuccess());
      } catch (e) {
        emit(LoginError(e.toString()));
      }
    });

    on<GetUser>((event, emit) async {
      emit(LoginLoding());
      try {
        final prefs = await SharedPreferences.getInstance();
        await Future.delayed(const Duration(seconds: 3));
        final token = prefs.getString('token');
        emit(LoginSuccess(token: token));
      } catch (e) {
        emit(LoginError(e.toString()));
      }
    });
  }
}
