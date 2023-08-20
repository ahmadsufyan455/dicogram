import 'package:dicogram/domain/usecases/story_usecase.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entity/story/story_entity.dart';

part 'maps_event.dart';
part 'maps_state.dart';
part 'maps_bloc.freezed.dart';

class MapsBloc extends Bloc<MapsEvent, MapsState> {
  final StoryUseCase storyUseCase;
  MapsBloc({required this.storyUseCase}) : super(const _Initial()) {
    on<_LoadStoryLocation>((event, emit) async {
      emit(const _Loading());
      try {
        final result = await storyUseCase.getStory(location: 1);
        emit(_Loaded(result.stories));
      } catch (e) {
        emit(_Error(e.toString()));
      }
    });
  }
}
