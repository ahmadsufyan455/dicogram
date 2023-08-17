import 'package:dicogram/domain/entity/register/register_entity.dart';
import 'package:dicogram/domain/repository/register_repository.dart';

class RegisterUsecase {
  final RegisterRepository registerRepository;
  RegisterUsecase({required this.registerRepository});

  Future<RegisterEntity> register(Map<String, dynamic> data) {
    return registerRepository.register(data);
  }
}
