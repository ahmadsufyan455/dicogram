import 'package:dicogram/data/model/story/story_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'story_entity.freezed.dart';

@freezed
class StoryEntity with _$StoryEntity {
  const factory StoryEntity({
    required bool error,
    required String message,
    required List<StoryResultEntity> stories,
  }) = _StoryEntity;

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
}

@freezed
class StoryResultEntity with _$StoryResultEntity {
  const factory StoryResultEntity({
    required String id,
    required String name,
    required String description,
    required String photoUrl,
    required String createdAt,
    double? lat,
    double? lon,
  }) = _StoryResultEntity;
}
