import 'package:dicogram/domain/entity/story_entity.dart';
import 'package:equatable/equatable.dart';

class StoryModel extends StoryEntity with EquatableMixin {
  StoryModel(
      {required bool error,
      required String message,
      required List<StoryResultModel> stories})
      : super(error: error, message: message, stories: stories);

  factory StoryModel.fromJson(Map<String, dynamic> json) => StoryModel(
      error: json['error'],
      message: json['message'],
      stories: List<StoryResultModel>.from(
          json['listStory'].map((story) => StoryResultModel.fromJson(story))));
}

class StoryResultModel extends StoryResultEntity with EquatableMixin {
  StoryResultModel({
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

  factory StoryResultModel.fromJson(Map<String, dynamic> json) =>
      StoryResultModel(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        photoUrl: json['photoUrl'],
        createdAt: json['createdAt'],
        lat: json['lat'],
        lon: json['lon'],
      );
}
