part of 'story_bloc.dart';

@immutable
abstract class StoryState extends Equatable {
  const StoryState();

  @override
  List<Object> get props => [];
}

class StoryInitial extends StoryState {}

class StoryLoading extends StoryState {}

class StoryLoaded extends StoryState {
  final List<StoryResultEntity> stories;
  final bool hasReachedMax;
  const StoryLoaded(this.stories, this.hasReachedMax);

  @override
  List<Object> get props => [stories, hasReachedMax];
}

class StoryError extends StoryState {
  final String error;
  const StoryError(this.error);

  @override
  List<Object> get props => [error];
}
