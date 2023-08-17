import 'package:dicogram/domain/entity/add_story_entity.dart';
import 'package:dicogram/domain/repository/add_story_repository.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/add_story/add_story_model.dart';
import '../source/remote_datasource.dart';

class AddStoryRepositoryImpl implements AddStoryRepository {
  final RemoteDataSource remoteDataSource;
  AddStoryRepositoryImpl({required this.remoteDataSource});

  @override
  Future<AddStoryEntity> addStory(FormData data) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    final addStoryModel = await remoteDataSource.request(
      endPoint: '/stories',
      data: data,
      modelFromJson: (json) => AddStoryModel.fromJson(json),
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'multipart/form-data'
      },
      method: 'POST',
    );
    return AddStoryEntity.fromModel(addStoryModel);
  }
}
