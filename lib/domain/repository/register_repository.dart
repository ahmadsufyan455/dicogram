import 'package:dicogram/domain/entity/register_entity.dart';

abstract class RegisterRepository {
  Future<RegisterEntity> register(Map<String, dynamic> data);
}
