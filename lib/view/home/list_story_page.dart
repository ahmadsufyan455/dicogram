import 'package:dicogram/data/source/remote_data_source.dart';
import 'package:dicogram/data/source/story_repository.dart';
import 'package:dicogram/widget/item_story.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/story_bloc.dart';

class ListStoryPage extends StatelessWidget {
  const ListStoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          StoryBloc(StoryRepository(RemoteDataSourceImpl()))..add(LoadStory()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Dicogram'),
          centerTitle: true,
        ),
        body: BlocBuilder<StoryBloc, StoryState>(
          builder: (context, state) {
            if (state is StoryLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is StoryLoaded) {
              final data = state.story.stories;
              return ListView.separated(
                separatorBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Divider(
                    thickness: 2,
                  ),
                ),
                itemCount: data!.length,
                itemBuilder: (context, index) {
                  final story = data[index];
                  return ItemStory(
                    name: story.name ?? '',
                    photoUrl: story.photoUrl ?? '',
                    description: story.description ?? '',
                    lat: story.lat,
                    lon: story.lon,
                    createdAt: story.createdAt ?? '',
                  );
                },
              );
            } else if (state is StoryError) {
              return Center(child: Text(state.error));
            }
            return Container();
          },
        ),
      ),
    );
  }
}
