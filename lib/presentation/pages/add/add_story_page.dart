import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:dicogram/data/model/add_story/add_story_model.dart';
import 'package:dicogram/presentation/widget/custom_button.dart';
import 'package:dicogram/router_v2.dart';
import 'package:dicogram/utils/text_styles.dart';
import 'package:dicogram/presentation/widget/text_input.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'bloc/add_story_bloc.dart';
import 'cubit/image_cubit.dart';

@RoutePage()
class AddStoryPage extends StatefulWidget {
  const AddStoryPage({super.key});

  @override
  State<AddStoryPage> createState() => _AddStoryPageState();
}

class _AddStoryPageState extends State<AddStoryPage> {
  final descriptionController = TextEditingController();
  double? lat;
  double? lon;
  String? address;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n!.addStory,
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
                      l10n.openCamera,
                      style: TextStyles.body,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () async => _onGalleryView(context),
                    child: Text(
                      l10n.openGallery,
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
                      hint: l10n.description,
                    ),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () async {
                      final result = await context
                          .pushRoute<List<dynamic>>(const LocationRoute());
                      setState(() {
                        lat = result?[0];
                        lon = result?[1];
                        address = result?[2];
                      });
                    },
                    icon: const Icon(
                      Icons.add_location_rounded,
                      color: Colors.deepPurple,
                      size: 34,
                    ),
                  ),
                ],
              ),
              if (address != null)
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.pin_drop, color: Colors.redAccent),
                      const SizedBox(width: 8.0),
                      Flexible(child: Text(address!, style: TextStyles.body)),
                    ],
                  ),
                ),
              const SizedBox(height: 24.0),
              BlocConsumer<AddStoryBloc, AddStoryState>(
                listener: (context, state) {
                  if (state is AddStoryError) {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text(
                          l10n.somethingWentWrong,
                          style: TextStyles.title,
                        ),
                        content: Text(state.error, style: TextStyles.body),
                        actions: [
                          TextButton(
                            onPressed: () => context.router.pop(),
                            child: Text(
                              l10n.tryAgain,
                              style: TextStyles.body.copyWith(
                                color: Colors.deepPurple,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  } else if (state is AddStorySuccess) {
                    context.router.pushAndPopUntil(
                      const ListStoryRoute(),
                      predicate: (route) => false,
                    );
                  }
                },
                builder: (context, state) {
                  if (state is AddStoryLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  return CustomButton(
                    label: l10n.addStory,
                    onTap: () async {
                      final imagePath =
                          context.read<ImageCubit>().state.imagePath;
                      final description = descriptionController.text;

                      if (imagePath != null && description.isNotEmpty) {
                        final imageFile = File(imagePath);
                        final formData = RequestAddStory(
                          description: description,
                          photo: MultipartFile.fromFileSync(
                            imageFile.path,
                            filename: 'dicogram image',
                          ),
                          lat: lat,
                          lon: lon,
                        ).toFormData();

                        if (context.mounted) {
                          context.read<AddStoryBloc>().add(AddStory(formData));
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              l10n.dataNotComplete,
                            ),
                          ),
                        );
                      }
                    },
                  );
                },
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

  @override
  void dispose() {
    descriptionController.dispose();
    super.dispose();
  }
}
