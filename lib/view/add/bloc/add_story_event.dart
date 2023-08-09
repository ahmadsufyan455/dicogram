part of 'add_story_bloc.dart';

@immutable
sealed class AddStoryEvent extends Equatable {
  const AddStoryEvent();

  @override
  List<Object> get props => [];
}

final class AddStory extends AddStoryEvent {
  final FormData data;
  const AddStory(this.data);
}
