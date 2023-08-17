import 'package:dicogram/data/model/story/story_model.dart';
import 'package:equatable/equatable.dart';

class StoryEntity extends Equatable {
  final bool error;
  final String message;
  final List<StoryResultEntity> stories;

  const StoryEntity({
    required this.error,
    required this.message,
    required this.stories,
  });

  factory StoryEntity.fromModel(StoryModel model) {
    final storyResultEntities = model.stories
        .map((storyResultModel) => StoryResultEntity(
              id: storyResultModel.id,
              name: storyResultModel.name,
              description: storyResultModel.description,
              photoUrl: storyResultModel.photoUrl,
              createdAt: storyResultModel.createdAt,
            ))
        .toList();
    return StoryEntity(
      error: model.error,
      message: model.message,
      stories: storyResultEntities,
    );
  }

  @override
  List<Object?> get props => [error, message, stories];
}

class StoryResultEntity extends Equatable {
  final String id;
  final String name;
  final String description;
  final String photoUrl;
  final String createdAt;
  final double? lat;
  final double? lon;

  const StoryResultEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.photoUrl,
    required this.createdAt,
    this.lat,
    this.lon,
  });

  @override
  List<Object?> get props =>
      [id, name, description, photoUrl, createdAt, lat, lon];
}
