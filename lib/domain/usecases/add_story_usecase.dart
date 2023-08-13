import 'package:dicogram/domain/repository/add_story_repository.dart';
import 'package:dio/dio.dart';

import '../entity/add_story_entity.dart';

class AddStoryUseCase {
  final AddStoryRepository addStoryRepository;
  AddStoryUseCase({required this.addStoryRepository});

  Future<AddStoryEntity> addStory(FormData data) {
    return addStoryRepository.addStory(data);
  }
}
