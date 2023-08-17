import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'add_story_model.g.dart';

@JsonSerializable()
class AddStoryModel extends Equatable {
  final bool error;
  final String message;

  const AddStoryModel({
    required this.error,
    required this.message,
  });

  factory AddStoryModel.fromJson(Map<String, dynamic> json) =>
      _$AddStoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddStoryModelToJson(this);

  @override
  List<Object?> get props => [error, message];
}

class RequestAddStory {
  final String description;
  final MultipartFile photo;
  final double? lat;
  final double? lon;

  RequestAddStory({
    required this.description,
    required this.photo,
    this.lat,
    this.lon,
  });

  FormData toFormData() {
    return FormData.fromMap({
      'description': description,
      'photo': photo,
      'lat': lat ?? 0.0,
      'lon': lon ?? 0.0,
    });
  }
}
