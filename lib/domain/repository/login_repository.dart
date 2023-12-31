import 'package:dicogram/domain/entity/login/login_entity.dart';

abstract class LoginRepository {
  Future<LoginEntity> login(Map<String, dynamic> data);
}
