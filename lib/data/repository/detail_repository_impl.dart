import 'package:dicogram/data/model/detail_model.dart';
import 'package:dicogram/domain/entity/detail_entity.dart';
import 'package:dicogram/domain/repository/detail_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../source/remote_datasource.dart';

class DetailRepositoryImpl implements DetailRepository {
  final RemoteDataSource remoteDataSource;
  DetailRepositoryImpl({required this.remoteDataSource});

  @override
  Future<DetailEntity> getDetailStory(String id) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    return remoteDataSource.request(
      endPoint: '/stories/$id',
      modelFromJson: (json) => DetailStoryModel.fromJson(json),
      headers: {'Authorization': 'Bearer $token'},
    );
  }
}
