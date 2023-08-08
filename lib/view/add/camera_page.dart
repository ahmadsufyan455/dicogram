import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:dicogram/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/camera_cubit.dart';

@RoutePage<XFile>()
class CameraPage extends StatelessWidget {
  final List<CameraDescription> cameras;
  const CameraPage({Key? key, required this.cameras}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CameraCubit()..initializeCamera(cameras),
      child: _CameraPageView(cameras: cameras),
    );
  }
}

class _CameraPageView extends StatefulWidget {
  final List<CameraDescription> cameras;
  const _CameraPageView({required this.cameras});

  @override
  State<_CameraPageView> createState() => _CameraPageViewState();
}

class _CameraPageViewState extends State<_CameraPageView>
    with WidgetsBindingObserver {
  @override
  void dispose() {
    context.read<CameraCubit>().disposeCamera();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CameraCubit, CameraState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Take a Photo',
              style: TextStyles.body.copyWith(fontSize: 20),
            ),
            backgroundColor: Colors.transparent,
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () =>
                    context.read<CameraCubit>().switchCamera(widget.cameras),
                icon: const Icon(
                  Icons.switch_camera_rounded,
                  color: Colors.deepPurple,
                ),
              ),
            ],
          ),
          body: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                state.isCameraInitialized
                    ? CameraPreview(state.controller!)
                    : const Center(child: CircularProgressIndicator()),
                Align(
                  alignment: const Alignment(0, 0.95),
                  child: _actionWidget(),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _actionWidget() {
    return FloatingActionButton(
      heroTag: "take-picture",
      tooltip: "Ambil Gambar",
      onPressed: () => _onCameraButtonClick(),
      child: const Icon(Icons.camera_alt),
    );
  }

  Future<void> _onCameraButtonClick() async {
    final XFile? image = await context.read<CameraCubit>().takePicture();
    if (image != null && context.mounted) {
      context.router.pop<XFile>(image);
    }
  }
}
