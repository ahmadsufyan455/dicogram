import 'package:dicogram/data/model/register/register_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_entity.freezed.dart';

@freezed
class RegisterEntity with _$RegisterEntity {
  const factory RegisterEntity({
    required bool error,
    required String message,
  }) = _RegisterEntity;

  factory RegisterEntity.fromModel(RegisterModel model) {
    return RegisterEntity(error: model.error, message: model.message);
  }
}
