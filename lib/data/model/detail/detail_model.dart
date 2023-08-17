import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'detail_model.g.dart';

@JsonSerializable()
class DetailStoryModel extends Equatable {
  final bool error;
  final String message;
  @JsonKey(name: 'story')
  final DetailResultModel detail;

  const DetailStoryModel({
    required this.error,
    required this.message,
    required this.detail,
  });

  factory DetailStoryModel.fromJson(Map<String, dynamic> json) =>
      _$DetailStoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$DetailStoryModelToJson(this);

  @override
  List<Object?> get props => [error, message, detail];
}

@JsonSerializable()
class DetailResultModel extends Equatable {
  final String id;
  final String name;
  final String description;
  final String photoUrl;
  final String createdAt;
  final double? lat;
  final double? lon;

  const DetailResultModel({
    required this.id,
    required this.name,
    required this.description,
    required this.photoUrl,
    required this.createdAt,
    this.lat,
    this.lon,
  });

  factory DetailResultModel.fromJson(Map<String, dynamic> json) =>
      _$DetailResultModelFromJson(json);

  Map<String, dynamic> toJson() => _$DetailResultModelToJson(this);

  @override
  List<Object?> get props =>
      [id, name, description, photoUrl, createdAt, lat, lon];
}
