import 'package:dicogram/data/model/detail/detail_model.dart';
import 'package:equatable/equatable.dart';

class DetailEntity extends Equatable {
  final bool error;
  final String message;
  final DetailResultEntity detail;

  const DetailEntity({
    required this.error,
    required this.message,
    required this.detail,
  });

  factory DetailEntity.fromModel(DetailStoryModel model) {
    final detail = model.detail;
    final detailResultEntity = DetailResultEntity(
      id: detail.id,
      name: detail.name,
      description: detail.description,
      photoUrl: detail.photoUrl,
      createdAt: detail.createdAt,
    );

    return DetailEntity(
      error: model.error,
      message: model.message,
      detail: detailResultEntity,
    );
  }

  @override
  List<Object?> get props => [error, message, detail];
}

class DetailResultEntity extends Equatable {
  final String id;
  final String name;
  final String description;
  final String photoUrl;
  final String createdAt;
  final double? lat;
  final double? lon;

  const DetailResultEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.photoUrl,
    required this.createdAt,
    this.lat,
    this.lon,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        photoUrl,
        createdAt,
        lat,
        lon,
      ];
}
