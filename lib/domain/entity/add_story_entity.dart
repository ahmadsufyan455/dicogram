import 'package:dicogram/data/model/add_story/add_story_model.dart';
import 'package:equatable/equatable.dart';

class AddStoryEntity extends Equatable {
  final bool error;
  final String message;

  const AddStoryEntity({required this.error, required this.message});

  factory AddStoryEntity.fromModel(AddStoryModel model) {
    return AddStoryEntity(error: model.error, message: model.message);
  }

  @override
  List<Object?> get props => [error, message];
}
