import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:dicogram/utils/text_styles.dart';
import 'package:flutter/material.dart';

@RoutePage<XFile>()
class CameraPage extends StatefulWidget {
  final List<CameraDescription> cameras;
  const CameraPage({super.key, required this.cameras});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  bool isCameraInitialized = false;
  CameraController? controller;

  void onNewCameraSelected(CameraDescription cameraDescription) async {
    final previousCameraController = controller;
    final cameraController = CameraController(
      cameraDescription,
      ResolutionPreset.medium,
    );
    await previousCameraController?.dispose();
    try {
      await cameraController.initialize();
    } on CameraException catch (e) {
      throw 'Error initializing camera: $e';
    }

    if (mounted) {
      setState(() {
        controller = cameraController;
        isCameraInitialized = controller!.value.isInitialized;
      });
    }
  }

  @override
  void initState() {
    onNewCameraSelected(widget.cameras.first);
    super.initState();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
            onPressed: () => _onCameraSwitch(),
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
            isCameraInitialized
                ? CameraPreview(controller!)
                : const Center(child: CircularProgressIndicator()),
            Align(
              alignment: const Alignment(0, 0.95),
              child: _actionWidget(),
            )
          ],
        ),
      ),
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
    final image = await controller?.takePicture();
    if (context.mounted) {
      context.router.pop<XFile>(image);
    }
  }

  void _onCameraSwitch() {}
}
