import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entity/story/story_entity.dart';
import '../../../../domain/usecases/story_usecase.dart';

part 'story_bloc.freezed.dart';
part 'story_event.dart';
part 'story_state.dart';

class StoryBloc extends Bloc<StoryEvent, StoryState> {
  final StoryUseCase storyUseCase;
  int page = 1;

  StoryBloc({required this.storyUseCase}) : super(const _Initial()) {
    on<_LoadStory>((event, emit) async {
      emit(const _Loading());
      try {
        final result = await storyUseCase.getStory(page);
        emit(_Loaded(result.stories, result.stories.isEmpty));
      } catch (e) {
        emit(_Error(e.toString()));
      }
    });

    on<_LoadMoreStory>((event, emit) async {
      page++;
      try {
        final result = await storyUseCase.getStory(page);
        final currentState = state as _Loaded;
        final updatedStory = currentState.stories + result.stories;
        emit(_Loaded(updatedStory, result.stories.isEmpty));
      } catch (e) {
        emit(_Error(e.toString()));
      }
    });
  }
}
