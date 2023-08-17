part of 'story_bloc.dart';

@freezed
class StoryEvent with _$StoryEvent {
  const factory StoryEvent.loadStory() = _LoadStory;
  const factory StoryEvent.loadMoreStory() = _LoadMoreStory;
}
