import 'package:dicogram/data/model/story/story_model.dart';
import 'package:dicogram/domain/entity/story/story_entity.dart';
import 'package:dicogram/domain/repository/story_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../source/remote_datasource.dart';

class StoryRepositoryImpl implements StoryRepository {
  final RemoteDataSource remoteDataSource;
  StoryRepositoryImpl({required this.remoteDataSource});

  @override
  Future<StoryEntity> getStory(int page) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    final storyModel = await remoteDataSource.request(
      endPoint: '/stories',
      modelFromJson: (json) => StoryModel.fromJson(json),
      queryParameter: {'page': page},
      headers: {'Authorization': 'Bearer $token'},
    );
    return StoryEntity.fromModel(storyModel);
  }
}
