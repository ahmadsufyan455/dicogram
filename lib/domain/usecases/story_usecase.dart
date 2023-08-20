import 'package:dicogram/domain/entity/story/story_entity.dart';
import 'package:dicogram/domain/repository/story_repository.dart';

class StoryUseCase {
  final StoryRepository storyRepository;
  StoryUseCase({required this.storyRepository});

  Future<StoryEntity> getStory({int? page, int? location}) {
    return storyRepository.getStory(page: page, location: location);
  }
}
