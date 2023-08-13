import 'package:equatable/equatable.dart';

class AddStoryEntity extends Equatable {
  final bool error;
  final String message;

  const AddStoryEntity({required this.error, required this.message});

  @override
  List<Object?> get props => [error, message];
}
