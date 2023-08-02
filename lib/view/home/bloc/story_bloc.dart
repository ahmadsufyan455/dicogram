import 'package:dicogram/data/source/story_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dicogram/data/model/story_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'story_event.dart';
part 'story_state.dart';

class StoryBloc extends Bloc<StoryEvent, StoryState> {
  final StoryRepository _repository;

  StoryBloc(this._repository) : super(StoryInitial()) {
    on<LoadStory>((event, emit) async {
      emit(StoryLoading());
      try {
        final result = await _repository.getStories();
        emit(StoryLoaded(result));
      } catch (e) {
        emit(StoryError(e.toString()));
      }
    });
  }
}
