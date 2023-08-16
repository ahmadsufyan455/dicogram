part of 'detail_story_bloc.dart';

@immutable
sealed class DetailStoryEvent extends Equatable {
  const DetailStoryEvent();

  @override
  List<Object> get props => [];
}

final class LoadDetailStory extends DetailStoryEvent {
  final String id;
  const LoadDetailStory(this.id);

  @override
  List<Object> get props => [id];
}
