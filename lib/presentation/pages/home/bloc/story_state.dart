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
  final StoryEntity story;
  const StoryLoaded(this.story);
}

class StoryError extends StoryState {
  final String error;
  const StoryError(this.error);
}
