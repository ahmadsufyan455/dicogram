import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:dicogram/router_v2.dart';
import 'package:dicogram/utils/text_styles.dart';
import 'package:dicogram/view/add/cubit/image_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AddStoryPage extends StatelessWidget {
  const AddStoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Story',
          style: TextStyles.body.copyWith(fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: _showImage(context),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => _onCustomCameraView(context),
                  child: Text(
                    'Open Camera',
                    style: TextStyles.body,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Open Gallery',
                    style: TextStyles.body,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _onCustomCameraView(BuildContext context) async {
    final cameras = await availableCameras();
    if (context.mounted) {
      final XFile? resultImageFile = await context.pushRoute<XFile>(
        CameraRoute(cameras: cameras),
      );
      if (resultImageFile != null) {
        if (context.mounted) {
          final imageCubit = context.read<ImageCubit>();
          imageCubit.setImageFile(resultImageFile);
          imageCubit.setImagePath(resultImageFile.path);
        }
      }
    }
  }

  Widget _showImage(BuildContext context) {
    final imagePath = context.watch<ImageCubit>().state.imagePath;
    if (imagePath == null) {
      return const Align(
        alignment: Alignment.center,
        child: Icon(
          Icons.image,
          size: 100,
        ),
      );
    }

    return Image.file(
      File(imagePath),
      fit: BoxFit.contain,
    );
  }
}
