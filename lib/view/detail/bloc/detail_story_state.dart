part of 'detail_story_bloc.dart';

sealed class DetailStoryState extends Equatable {
  const DetailStoryState();

  @override
  List<Object> get props => [];
}

final class DetailStoryInitial extends DetailStoryState {}

final class DetailStoryLoading extends DetailStoryState {}

final class DetailStoryLoaded extends DetailStoryState {
  final DetailStory story;
  const DetailStoryLoaded(this.story);
}

final class DetailStoryError extends DetailStoryState {
  final String error;
  const DetailStoryError(this.error);
}
