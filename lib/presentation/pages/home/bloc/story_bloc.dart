import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../../../domain/entity/story_entity.dart';
import '../../../../domain/usecases/story_usecase.dart';

part 'story_event.dart';
part 'story_state.dart';

class StoryBloc extends Bloc<StoryEvent, StoryState> {
  final StoryUseCase storyUseCase;
  int page = 1;

  StoryBloc({required this.storyUseCase}) : super(StoryInitial()) {
    on<LoadStory>((event, emit) async {
      emit(StoryLoading());
      try {
        final result = await storyUseCase.getStory(page);
        emit(StoryLoaded(result.stories, result.stories.isEmpty));
      } catch (e) {
        emit(StoryError(e.toString()));
      }
    });

    on<LoadMoreStory>((event, emit) async {
      page++;
      try {
        final result = await storyUseCase.getStory(page);
        final currentState = state as StoryLoaded;
        final updatedStory = currentState.stories + result.stories;
        emit(StoryLoaded(updatedStory, result.stories.isEmpty));
      } catch (e) {
        emit(StoryError(e.toString()));
      }
    });
  }
}
