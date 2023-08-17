// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailStoryModel _$DetailStoryModelFromJson(Map<String, dynamic> json) =>
    DetailStoryModel(
      error: json['error'] as bool,
      message: json['message'] as String,
      detail: DetailResultModel.fromJson(json['story'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DetailStoryModelToJson(DetailStoryModel instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'story': instance.detail,
    };

DetailResultModel _$DetailResultModelFromJson(Map<String, dynamic> json) =>
    DetailResultModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      photoUrl: json['photoUrl'] as String,
      createdAt: json['createdAt'] as String,
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DetailResultModelToJson(DetailResultModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'photoUrl': instance.photoUrl,
      'createdAt': instance.createdAt,
      'lat': instance.lat,
      'lon': instance.lon,
    };
