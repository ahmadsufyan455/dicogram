import 'package:dicogram/domain/entity/story/story_entity.dart';

abstract class StoryRepository {
  Future<StoryEntity> getStory({int? page, int? location});
}
