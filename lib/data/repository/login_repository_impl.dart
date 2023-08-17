import 'package:dicogram/data/model/login/login_model.dart';
import 'package:dicogram/domain/entity/login_entity.dart';
import 'package:dicogram/domain/repository/login_repository.dart';

import '../source/remote_datasource.dart';

class LoginRepositoryImpl implements LoginRepository {
  final RemoteDataSource remoteDataSource;
  LoginRepositoryImpl({required this.remoteDataSource});

  @override
  Future<LoginEntity> login(Map<String, dynamic> data) async {
    final loginModel = await remoteDataSource.request(
      endPoint: '/login',
      data: data,
      modelFromJson: (json) => LoginModel.fromJson(json),
      method: 'POST',
    );
    return LoginEntity.fromModel(loginModel);
  }
}
