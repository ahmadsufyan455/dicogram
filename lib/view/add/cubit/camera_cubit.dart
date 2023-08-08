import 'package:camera/camera.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CameraCubit extends Cubit<CameraState> {
  CameraCubit()
      : super(
          CameraState(
            isBackCameraSelected: true,
            isCameraInitialized: false,
            controller: null,
          ),
        );

  void initializeCamera(List<CameraDescription> cameras) async {
    final CameraController cameraController = CameraController(
      cameras[0],
      ResolutionPreset.medium,
    );
    await cameraController.initialize();

    emit(state.copyWith(
      controller: cameraController,
      isCameraInitialized: cameraController.value.isInitialized,
    ));
  }

  void disposeCamera() async {
    final CameraController? cameraController = state.controller;
    if (cameraController != null && cameraController.value.isInitialized) {
      await cameraController.dispose();
    }
  }

  void switchCamera(List<CameraDescription> cameras) async {
    final bool isBackCameraSelected = state.isBackCameraSelected;
    final CameraController? previousController = state.controller;

    final CameraController cameraController = CameraController(
      cameras[isBackCameraSelected ? 1 : 0],
      ResolutionPreset.medium,
    );

    await previousController?.dispose();
    await cameraController.initialize();

    emit(state.copyWith(
      controller: cameraController,
      isBackCameraSelected: !isBackCameraSelected,
      isCameraInitialized: cameraController.value.isInitialized,
    ));
  }

  Future<XFile?> takePicture() async {
    final CameraController? cameraController = state.controller;
    if (cameraController == null || !cameraController.value.isInitialized) {
      return null;
    }

    try {
      final XFile image = await cameraController.takePicture();
      return image;
    } on CameraException catch (e) {
      throw 'Error taking picture: $e';
    }
  }
}

class CameraState {
  final bool isBackCameraSelected;
  final bool isCameraInitialized;
  final CameraController? controller;

  CameraState({
    required this.isBackCameraSelected,
    required this.isCameraInitialized,
    required this.controller,
  });

  CameraState copyWith({
    bool? isBackCameraSelected,
    bool? isCameraInitialized,
    CameraController? controller,
  }) {
    return CameraState(
      isBackCameraSelected: isBackCameraSelected ?? this.isBackCameraSelected,
      isCameraInitialized: isCameraInitialized ?? this.isCameraInitialized,
      controller: controller ?? this.controller,
    );
  }
}
