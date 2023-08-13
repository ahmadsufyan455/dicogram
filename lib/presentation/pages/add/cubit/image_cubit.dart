import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:camera/camera.dart';

class ImageCubit extends Cubit<ImageState> {
  ImageCubit() : super(ImageState());

  void setImagePath(String? value) {
    emit(state.copyWith(imagePath: value));
  }

  void setImageFile(XFile? value) {
    emit(state.copyWith(imageFile: value));
  }
}

class ImageState {
  final String? imagePath;
  final XFile? imageFile;

  ImageState({this.imagePath, this.imageFile});

  ImageState copyWith({
    String? imagePath,
    XFile? imageFile,
  }) {
    return ImageState(
      imagePath: imagePath ?? this.imagePath,
      imageFile: imageFile ?? this.imageFile,
    );
  }
}
