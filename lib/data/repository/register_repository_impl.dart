import 'package:dicogram/domain/entity/register/register_entity.dart';
import 'package:dicogram/domain/repository/register_repository.dart';

import '../model/register/register_model.dart';
import '../source/remote_datasource.dart';

class RegisterRepositoryImpl implements RegisterRepository {
  final RemoteDataSource remoteDataSource;
  RegisterRepositoryImpl({required this.remoteDataSource});

  @override
  Future<RegisterEntity> register(Map<String, dynamic> data) async {
    final registerModel = await remoteDataSource.request(
      endPoint: '/register',
      data: data,
      modelFromJson: (json) => RegisterModel.fromJson(json),
      method: 'POST',
    );
    return RegisterEntity.fromModel(registerModel);
  }
}
