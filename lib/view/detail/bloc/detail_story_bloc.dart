import 'package:dicogram/data/model/detail_model.dart';
import 'package:dicogram/data/source/story_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'detail_story_event.dart';
part 'detail_story_state.dart';

class DetailStoryBloc extends Bloc<DetailStoryEvent, DetailStoryState> {
  final StoryRepository _storyRepository;

  DetailStoryBloc(this._storyRepository) : super(DetailStoryInitial()) {
    on<LoadDetailStory>((event, emit) async {
      emit(DetailStoryLoading());
      try {
        final result = await _storyRepository.getDetailStory(event.id);
        emit(DetailStoryLoaded(result));
      } catch (e) {
        emit(DetailStoryError(e.toString()));
      }
    });
  }
}
