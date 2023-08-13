import 'package:dicogram/domain/entity/add_story_entity.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

class AddStoryModel extends AddStoryEntity with EquatableMixin {
  AddStoryModel({required bool error, required String message})
      : super(error: error, message: message);

  factory AddStoryModel.fromJson(Map<String, dynamic> json) =>
      AddStoryModel(error: json['error'], message: json['message']);
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
