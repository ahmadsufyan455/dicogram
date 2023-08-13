import 'package:dicogram/domain/entity/detail_entity.dart';
import 'package:equatable/equatable.dart';

class DetailStoryModel extends DetailEntity with EquatableMixin {
  DetailStoryModel(
      {required bool error,
      required String message,
      required DetailResultModel detail})
      : super(error: error, message: message, detail: detail);

  factory DetailStoryModel.fromJson(Map<String, dynamic> json) =>
      DetailStoryModel(
          error: json['error'],
          message: json['message'],
          detail: DetailResultModel.fromJson(json['story']));
}

class DetailResultModel extends DetailResultEntity with EquatableMixin {
  DetailResultModel({
    required String id,
    required String name,
    required String description,
    required String photoUrl,
    required String createdAt,
    double? lat,
    double? lon,
  }) : super(
          id: id,
          name: name,
          description: description,
          photoUrl: photoUrl,
          createdAt: createdAt,
          lat: lat,
          lon: lon,
        );

  factory DetailResultModel.fromJson(Map<String, dynamic> json) =>
      DetailResultModel(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        photoUrl: json['photoUrl'],
        createdAt: json['createdAt'],
        lat: json['lat'],
        lon: json['lon'],
      );
}
