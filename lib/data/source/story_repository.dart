import 'package:dicogram/data/model/detail_model.dart';
import 'package:dicogram/data/model/login_model.dart';
import 'package:dicogram/data/model/register_model.dart';
import 'package:dicogram/data/model/story_model.dart';
import 'package:dicogram/data/source/remote_data_source.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StoryRepository {
  final RemoteDataSource _dataSource;

  StoryRepository(this._dataSource);

  Future<RegisterModel> register(Map<String, dynamic> data) {
    return _dataSource.request(
      endPoint: '/register',
      data: data,
      modelFromJson: (json) => RegisterModel.fromJson(json),
      method: 'POST',
    );
  }

  Future<LoginModel> login(Map<String, dynamic> data) {
    return _dataSource.request(
      endPoint: '/login',
      data: data,
      modelFromJson: (json) => LoginModel.fromJson(json),
      method: 'POST',
    );
  }

  Future<Story> getStories() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    return _dataSource.request(
      endPoint: '/stories',
      modelFromJson: (json) => Story.fromJson(json),
      headers: {'Authorization': 'Bearer $token'},
    );
  }

  Future<DetailStory> getDetailStory(String id) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    return _dataSource.request(
      endPoint: '/stories/$id',
      modelFromJson: (json) => DetailStory.fromJson(json),
      headers: {'Authorization': 'Bearer $token'},
    );
  }
}
