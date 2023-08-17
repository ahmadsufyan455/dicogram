part of 'detail_story_bloc.dart';

@freezed
class DetailStoryState with _$DetailStoryState {
  const factory DetailStoryState.initial() = _Initial;
  const factory DetailStoryState.loading() = _Loading;
  const factory DetailStoryState.loaded(DetailEntity story) = _Loaded;
  const factory DetailStoryState.error(String error) = _Error;
}
