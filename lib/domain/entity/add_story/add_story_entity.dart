import 'package:dicogram/data/model/add_story/add_story_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_story_entity.freezed.dart';

@freezed
class AddStoryEntity with _$AddStoryEntity {
  const factory AddStoryEntity({
    required bool error,
    required String message,
  }) = _AddStoryEntity;

  factory AddStoryEntity.fromModel(AddStoryModel model) {
    return AddStoryEntity(error: model.error, message: model.message);
  }
}
