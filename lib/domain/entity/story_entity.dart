import 'package:equatable/equatable.dart';

class StoryEntity extends Equatable {
  final bool error;
  final String message;
  final List<StoryResultEntity> stories;

  const StoryEntity({
    required this.error,
    required this.message,
    required this.stories,
  });

  @override
  List<Object?> get props => [error, message, stories];
}

class StoryResultEntity extends Equatable {
  final String id;
  final String name;
  final String description;
  final String photoUrl;
  final String createdAt;
  final double? lat;
  final double? lon;

  const StoryResultEntity({
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
