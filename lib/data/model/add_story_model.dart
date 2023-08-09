import 'package:dio/dio.dart';

class AddStoryModel {
  bool? error;
  String? message;

  AddStoryModel({this.error, this.message});

  AddStoryModel.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    message = json['message'];
  }
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
