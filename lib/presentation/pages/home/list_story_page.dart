import 'package:auto_route/auto_route.dart';
import 'package:dicogram/injection.dart';
import 'package:dicogram/router_v2.dart';
import 'package:dicogram/utils/text_styles.dart';
import 'package:dicogram/presentation/widget/item_story.dart';
import 'package:dicogram/presentation/widget/loading_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/entity/story/story_entity.dart';
import 'bloc/story_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

@RoutePage()
class ListStoryPage extends StatelessWidget {
  const ListStoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dicogram',
          style: TextStyles.body.copyWith(fontSize: 20),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => context.pushRoute(const ProfileRoute()),
            icon: const Icon(Icons.person_2_rounded, color: Colors.deepPurple),
          ),
        ],
      ),
      body: BlocProvider(
        create: (context) =>
            serviceLocator<StoryBloc>()..add(const StoryEvent.loadStory()),
        child: BlocBuilder<StoryBloc, StoryState>(
          builder: (context, state) {
            return state.when(
              intial: () => Container(),
              loading: () => _showLoading(),
              loaded: (stories, hasReachedMax) =>
                  _showStories(context, stories, hasReachedMax),
              error: (error) => _showError(error),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pushRoute(const AddStoryRoute()),
        child: const Icon(Icons.add_a_photo_rounded),
      ),
    );
  }

  Widget _showLoading() {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return const LoadingShimmer();
      },
    );
  }

  Widget _showStories(BuildContext context, List<StoryResultEntity> stories,
      bool hasReachedMax) {
    final data = stories;
    return NotificationListener<ScrollNotification>(
      onNotification: (scrollNotification) {
        if (scrollNotification is ScrollEndNotification &&
            scrollNotification.metrics.pixels >=
                scrollNotification.metrics.maxScrollExtent) {
          context.read<StoryBloc>().add(const StoryEvent.loadMoreStory());
        }
        return false;
      },
      child: ListView.separated(
        separatorBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Divider(
            thickness: 2,
          ),
        ),
        itemCount: data.length + 1,
        itemBuilder: (context, index) {
          if (index < data.length) {
            final story = data[index];
            return GestureDetector(
              onTap: () => context.pushRoute(
                DetailRoute(id: story.id),
              ),
              child: ItemStory(
                name: story.name,
                photoUrl: story.photoUrl,
                description: story.description,
                lat: story.lat,
                lon: story.lon,
                createdAt: story.createdAt,
              ).animate().fade(duration: 500.ms).scale(duration: 500.ms),
            );
          } else {
            return hasReachedMax
                ? Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        AppLocalizations.of(context)!.noData,
                        style: TextStyles.body,
                      ),
                    ),
                  )
                : const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
          }
        },
      ),
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
