part of 'story_bloc.dart';

@freezed
class StoryState with _$StoryState {
  const factory StoryState.intial() = _Initial;
  const factory StoryState.loading() = _Loading;
  const factory StoryState.loaded(
      List<StoryResultEntity> stories, bool hasReachedMax) = _Loaded;
  const factory StoryState.error(String error) = _Error;
}
