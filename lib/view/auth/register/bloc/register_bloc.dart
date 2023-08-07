import 'package:dicogram/data/source/story_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final StoryRepository _storyRepository;

  RegisterBloc(this._storyRepository) : super(RegisterInitial()) {
    on<Register>((event, emit) async {
      emit(RegisterLoading());
      try {
        await _storyRepository.register(event.data);
        emit(RegisterSuccess());
      } catch (e) {
        emit(RegisterError(e.toString()));
      }
    });
  }
}
