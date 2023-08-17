import 'package:dicogram/domain/entity/login/login_entity.dart';
import 'package:dicogram/domain/repository/login_repository.dart';

class LoginUseCase {
  final LoginRepository loginRepository;
  LoginUseCase({required this.loginRepository});

  Future<LoginEntity> login(Map<String, dynamic> data) async {
    return loginRepository.login(data);
  }
}
