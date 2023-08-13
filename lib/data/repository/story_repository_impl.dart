import 'package:dicogram/data/model/story_model.dart';
import 'package:dicogram/domain/entity/story_entity.dart';
import 'package:dicogram/domain/repository/story_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../source/remote_datasource.dart';

class StoryRepositoryImpl implements StoryRepository {
  final RemoteDataSource remoteDataSource;
  StoryRepositoryImpl({required this.remoteDataSource});

  @override
  Future<StoryEntity> getStory() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    return remoteDataSource.request(
      endPoint: '/stories',
      modelFromJson: (json) => StoryModel.fromJson(json),
      headers: {'Authorization': 'Bearer $token'},
    );
  }
}
