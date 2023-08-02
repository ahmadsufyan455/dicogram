import 'package:dicogram/data/model/detail_model.dart';
import 'package:dicogram/data/model/login_model.dart';
import 'package:dicogram/data/model/register_model.dart';
import 'package:dicogram/data/model/story_model.dart';
import 'package:dicogram/data/source/remote_data_source.dart';

class StoryRepository {
  final RemoteDataSource _dataSource;

  StoryRepository(this._dataSource);

  Future<Register> register(Map<String, dynamic> data) {
    return _dataSource.request(
      endPoint: '/register',
      data: data,
      modelFromJson: (json) => Register.fromJson(json),
      method: 'POST',
    );
  }

  Future<Login> login(Map<String, dynamic> data) {
    return _dataSource.request(
      endPoint: '/login',
      data: data,
      modelFromJson: (json) => Login.fromJson(json),
      method: 'POST',
    );
  }

  Future<Story> getStories() {
    return _dataSource.request(
      endPoint: '/stories',
      modelFromJson: (json) => Story.fromJson(json),
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJ1c2VyLTUzdm9DVkw1MHRBV3ZqRkEiLCJpYXQiOjE2OTA5ODk3Mzl9.rgcHSnVtnFVRcCVQAmy1PoaiLnjqqRq3rf9uJI6W9_4'
      },
    );
  }

  Future<DetailStory> getDetailStory(String id) {
    return _dataSource.request(
      endPoint: '/stories/$id',
      modelFromJson: (json) => DetailStory.fromJson(json),
    );
  }
}
