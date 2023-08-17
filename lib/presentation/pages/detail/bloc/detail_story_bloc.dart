import 'package:dicogram/domain/entity/detail/detail_entity.dart';
import 'package:dicogram/domain/usecases/detail_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_story_bloc.freezed.dart';
part 'detail_story_event.dart';
part 'detail_story_state.dart';

class DetailStoryBloc extends Bloc<DetailStoryEvent, DetailStoryState> {
  final DetailUseCase detailUseCase;

  DetailStoryBloc({required this.detailUseCase}) : super(const _Initial()) {
    on<_LoadDetailStory>((event, emit) async {
      emit(const _Loading());
      try {
        final result = await detailUseCase.getDetailStory(event.id);
        emit(_Loaded(result));
      } catch (e) {
        emit(_Error(e.toString()));
      }
    });
  }
}
