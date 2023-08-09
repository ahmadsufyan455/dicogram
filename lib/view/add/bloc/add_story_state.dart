part of 'add_story_bloc.dart';

sealed class AddStoryState extends Equatable {
  const AddStoryState();

  @override
  List<Object> get props => [];
}

final class AddStoryInitial extends AddStoryState {}

final class AddStoryLoading extends AddStoryState {}

final class AddStorySuccess extends AddStoryState {}

final class AddStoryError extends AddStoryState {
  final String error;
  const AddStoryError(this.error);
}
