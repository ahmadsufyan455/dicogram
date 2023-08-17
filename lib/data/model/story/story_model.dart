import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'story_model.g.dart';

@JsonSerializable()
class StoryModel extends Equatable {
  final bool error;
  final String message;
  @JsonKey(name: 'listStory')
  final List<StoryResultModel> stories;

  const StoryModel({
    required this.error,
    required this.message,
    required this.stories,
  });

  factory StoryModel.fromJson(Map<String, dynamic> json) =>
      _$StoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$StoryModelToJson(this);

  @override
  List<Object?> get props => [error, message, stories];
}

@JsonSerializable()
class StoryResultModel extends Equatable {
  final String id;
  final String name;
  final String description;
  final String photoUrl;
  final String createdAt;
  final double? lat;
  final double? lon;

  const StoryResultModel({
    required this.id,
    required this.name,
    required this.description,
    required this.photoUrl,
    required this.createdAt,
    this.lat,
    this.lon,
  });

  factory StoryResultModel.fromJson(Map<String, dynamic> json) =>
      _$StoryResultModelFromJson(json);

  Map<String, dynamic> toJson() => _$StoryResultModelToJson(this);

  @override
  List<Object?> get props =>
      [id, name, description, photoUrl, createdAt, lat, lon];
}
