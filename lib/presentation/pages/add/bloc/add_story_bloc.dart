import 'package:dicogram/domain/usecases/add_story_usecase.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'add_story_event.dart';
part 'add_story_state.dart';

class AddStoryBloc extends Bloc<AddStoryEvent, AddStoryState> {
  final AddStoryUseCase addStoryUseCase;
  AddStoryBloc({required this.addStoryUseCase}) : super(AddStoryInitial()) {
    on<AddStory>((event, emit) async {
      emit(AddStoryLoading());
      try {
        await addStoryUseCase.addStory(event.data);
        emit(AddStorySuccess());
      } catch (error) {
        emit(AddStoryError(error.toString()));
      }
    });
  }
}
