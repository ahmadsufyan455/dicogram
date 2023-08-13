import 'package:dicogram/domain/entity/detail_entity.dart';
import 'package:dicogram/domain/usecases/detail_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'detail_story_event.dart';
part 'detail_story_state.dart';

class DetailStoryBloc extends Bloc<DetailStoryEvent, DetailStoryState> {
  final DetailUseCase detailUseCase;

  DetailStoryBloc({required this.detailUseCase}) : super(DetailStoryInitial()) {
    on<LoadDetailStory>((event, emit) async {
      emit(DetailStoryLoading());
      try {
        final result = await detailUseCase.getDetailStory(event.id);
        emit(DetailStoryLoaded(result));
      } catch (e) {
        emit(DetailStoryError(e.toString()));
      }
    });
  }
}
