import 'package:dicogram/domain/entity/story_entity.dart';

abstract class StoryRepository {
  Future<StoryEntity> getStory();
}
