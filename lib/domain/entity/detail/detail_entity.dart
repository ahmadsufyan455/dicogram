import 'package:dicogram/data/model/detail/detail_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_entity.freezed.dart';

@freezed
class DetailEntity with _$DetailEntity {
  const factory DetailEntity({
    required bool error,
    required String message,
    required DetailResultEntity detail,
  }) = _DetailEntity;

  factory DetailEntity.fromModel(DetailStoryModel model) {
    final detail = model.detail;
    final detailResultEntity = DetailResultEntity(
      id: detail.id,
      name: detail.name,
      description: detail.description,
      photoUrl: detail.photoUrl,
      createdAt: detail.createdAt,
      lat: detail.lat,
      lon: detail.lon,
    );

    return DetailEntity(
      error: model.error,
      message: model.message,
      detail: detailResultEntity,
    );
  }
}

@freezed
class DetailResultEntity with _$DetailResultEntity {
  const factory DetailResultEntity({
    required String id,
    required String name,
    required String description,
    required String photoUrl,
    required String createdAt,
    double? lat,
    double? lon,
  }) = _DetailResultEntity;
}
