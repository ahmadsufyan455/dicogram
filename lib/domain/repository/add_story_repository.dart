import 'package:dicogram/domain/entity/add_story_entity.dart';
import 'package:dio/dio.dart';

abstract class AddStoryRepository {
  Future<AddStoryEntity> addStory(FormData data);
}
