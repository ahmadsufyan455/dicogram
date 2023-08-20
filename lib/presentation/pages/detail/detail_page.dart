import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dicogram/domain/entity/detail/detail_entity.dart';
import 'package:dicogram/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../utils/helper.dart';
import '../../../utils/text_styles.dart';
import 'bloc/detail_story_bloc.dart';
import 'cubit/maps_cubit.dart';

@RoutePage()
class DetailPage extends StatelessWidget {
  final String id;
  const DetailPage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return BlocProvider(
      create: (context) => serviceLocator<DetailStoryBloc>()
        ..add(DetailStoryEvent.loadDetailStory(id)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            l10n!.detailStory,
            style: TextStyles.body.copyWith(fontSize: 20),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: BlocBuilder<DetailStoryBloc, DetailStoryState>(
              builder: (context, state) {
                return state.when(
                  initial: () => Container(),
                  loading: () => _showLoading(),
                  loaded: (story) => _showDetail(context, story.detail),
                  error: (error) => _showError(error),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _showLoading() {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _showDetail(BuildContext context, DetailResultEntity story) {
    final mapsCubit = context.read<MapsCubit>();
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: CachedNetworkImage(
            imageUrl: story.photoUrl,
            placeholder: (context, url) => const Center(
              child: SizedBox(
                width: 100,
                height: 100,
                child: CircularProgressIndicator(),
              ),
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 24),
        Text(story.name, style: TextStyles.title),
        const SizedBox(height: 16),
        Text(story.description, style: TextStyles.body),
        const SizedBox(height: 4),
        Text(
          Helper.formatTimestamp(context, story.createdAt),
          style: TextStyles.subtitle.copyWith(
            color: Colors.black54,
          ),
        ),
        if (story.lat != null && story.lon != null)
          Column(
            children: [
              const SizedBox(height: 24),
              Icon(Icons.location_on, color: Colors.red.shade400),
              const SizedBox(height: 4),
              FutureBuilder<String?>(
                future: Helper.getCity(story.lat!, story.lon!),
                builder: (context, snapshot) {
                  return Text(
                    snapshot.data ?? 'Unknown',
                    style: TextStyles.subtitle,
                  );
                },
              ),
              const SizedBox(height: 24),
              BlocBuilder<MapsCubit, MapsState>(
                builder: (context, state) {
                  final center = LatLng(story.lat!, story.lon!);
                  return SizedBox(
                    width: double.infinity,
                    height: 200,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Stack(
                        children: [
                          GoogleMap(
                            initialCameraPosition: CameraPosition(
                              zoom: 18,
                              target: center,
                            ),
                            markers: state.markers,
                            mapType: state.selectedMapType,
                            onMapCreated: (controller) =>
                                mapsCubit.onMapCreated(
                              controller,
                              story.lat!,
                              story.lon!,
                            ),
                            myLocationButtonEnabled: false,
                            zoomControlsEnabled: false,
                            mapToolbarEnabled: false,
                          ),
                          Positioned(
                            bottom: 16,
                            right: 16,
                            child: Column(
                              children: [
                                FloatingActionButton.small(
                                  heroTag: "zoom-in",
                                  onPressed: mapsCubit.zoomIn,
                                  child: const Icon(Icons.add),
                                ),
                                FloatingActionButton.small(
                                  heroTag: "zoom-out",
                                  onPressed: mapsCubit.zoomOut,
                                  child: const Icon(Icons.remove),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 16,
                            right: 16,
                            child: FloatingActionButton.small(
                              onPressed: null,
                              child: PopupMenuButton<MapType>(
                                onSelected: mapsCubit.changeMapType,
                                offset: const Offset(0, 54),
                                icon: const Icon(Icons.layers_outlined),
                                itemBuilder: (BuildContext context) =>
                                    <PopupMenuEntry<MapType>>[
                                  const PopupMenuItem<MapType>(
                                    value: MapType.normal,
                                    child: Text('Normal'),
                                  ),
                                  const PopupMenuItem<MapType>(
                                    value: MapType.satellite,
                                    child: Text('Satellite'),
                                  ),
                                  const PopupMenuItem<MapType>(
                                    value: MapType.terrain,
                                    child: Text('Terrain'),
                                  ),
                                  const PopupMenuItem<MapType>(
                                    value: MapType.hybrid,
                                    child: Text('Hybrid'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
      ],
    );
  }

  Widget _showError(String error) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          error,
          style: TextStyles.body,
        ),
      ),
    );
  }
}
