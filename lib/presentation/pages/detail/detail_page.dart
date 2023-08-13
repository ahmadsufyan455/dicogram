import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dicogram/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../utils/helper.dart';
import '../../../utils/text_styles.dart';
import 'bloc/detail_story_bloc.dart';

@RoutePage()
class DetailPage extends StatelessWidget {
  final String id;
  const DetailPage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return BlocProvider(
      create: (context) =>
          serviceLocator<DetailStoryBloc>()..add(LoadDetailStory(id)),
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
                if (state is DetailStoryLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is DetailStoryLoaded) {
                  final story = state.story.detail;
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
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
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
                        Helper.formatTimestamp(story.createdAt),
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
                          ],
                        ),
                    ],
                  );
                } else if (state is DetailStoryError) {
                  return Center(
                    child: Text(
                      state.error,
                      style: TextStyles.body,
                    ),
                  );
                }
                return Container();
              },
            ),
          ),
        ),
      ),
    );
  }
}
