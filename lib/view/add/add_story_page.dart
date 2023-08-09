import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:dicogram/data/model/add_story_model.dart';
import 'package:dicogram/router_v2.dart';
import 'package:dicogram/utils/text_styles.dart';
import 'package:dicogram/view/add/cubit/image_cubit.dart';
import 'package:dicogram/widget/text_input.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import 'bloc/add_story_bloc.dart';

@RoutePage()
class AddStoryPage extends StatelessWidget {
  const AddStoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final descriptionController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Story',
          style: TextStyles.body.copyWith(fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: _showImage(context),
              ),
              const SizedBox(height: 16.0),
              Row(
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
                    onPressed: () async => _onGalleryView(context),
                    child: Text(
                      'Open Gallery',
                      style: TextStyles.body,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24.0),
              Row(
                children: [
                  Expanded(
                    child: TextInput(
                      controller: descriptionController,
                      hint: 'Story description...',
                    ),
                  ),
                  const SizedBox(width: 10),
                  BlocConsumer<AddStoryBloc, AddStoryState>(
                    listener: (context, state) {
                      if (state is AddStoryError) {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text(
                              'Something went wrong!',
                              style: TextStyles.title,
                            ),
                            content: Text(state.error, style: TextStyles.body),
                            actions: [
                              TextButton(
                                onPressed: () => context.router.pop(),
                                child: Text(
                                  'Try Again',
                                  style: TextStyles.body.copyWith(
                                    color: Colors.deepPurple,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      } else if (state is AddStorySuccess) {
                        context.replaceRoute(const ListStoryRoute());
                      }
                    },
                    builder: (context, state) {
                      if (state is AddStoryLoading) {
                        return const CircularProgressIndicator();
                      }
                      return IconButton(
                        onPressed: () async {
                          final imagePath =
                              context.read<ImageCubit>().state.imagePath;
                          final description = descriptionController.text;

                          if (imagePath != null && description.isNotEmpty) {
                            final imageFile = File(imagePath);
                            final formData = RequestAddStory(
                              description: description,
                              photo: MultipartFile.fromFileSync(imageFile.path),
                            ).toFormData();

                            if (context.mounted) {
                              context
                                  .read<AddStoryBloc>()
                                  .add(AddStory(formData));
                            }
                          }
                        },
                        icon: const Icon(
                          Icons.upload_rounded,
                          color: Colors.deepPurple,
                          size: 34,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
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

  _onGalleryView(BuildContext context) async {
    final imageCubit = context.read<ImageCubit>();

    final isMacOS = defaultTargetPlatform == TargetPlatform.macOS;
    final isLinux = defaultTargetPlatform == TargetPlatform.linux;
    if (isMacOS || isLinux) return;

    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
    );

    if (pickedFile != null) {
      imageCubit.setImageFile(pickedFile);
      imageCubit.setImagePath(pickedFile.path);
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
