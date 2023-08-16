import 'package:auto_route/auto_route.dart';
import 'package:dicogram/injection.dart';
import 'package:dicogram/l10n/bloc/language_bloc.dart';
import 'package:dicogram/l10n/lang.dart';
import 'package:dicogram/router_v2.dart';
import 'package:dicogram/utils/text_styles.dart';
import 'package:dicogram/presentation/widget/item_story.dart';
import 'package:dicogram/presentation/widget/loading_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../auth/login/bloc/login_bloc.dart';
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
            onPressed: () => showModalBottomSheet(
              context: context,
              builder: (context) {
                return BlocBuilder<LanguageBloc, LanguageState>(
                  builder: (context, state) {
                    return ListView.separated(
                      shrinkWrap: true,
                      separatorBuilder: (context, index) => const Divider(
                        height: 1,
                        thickness: 1,
                      ),
                      itemCount: Language.values.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          onTap: () {
                            context
                                .read<LanguageBloc>()
                                .add(ChangeLanguage(Language.values[index]));
                            Future.delayed(const Duration(seconds: 300));
                            context.router.pop();
                          },
                          leading: Image.asset(
                            Language.values[index].logo,
                            width: 30,
                          ),
                          title: Text(Language.values[index].label),
                          trailing:
                              Language.values[index] == state.selectedLanguage
                                  ? const Icon(
                                      Icons.check_rounded,
                                      color: Colors.deepPurple,
                                    )
                                  : null,
                        );
                      },
                    );
                  },
                );
              },
            ),
            icon: const Icon(
              Icons.translate_rounded,
              color: Colors.deepPurple,
            ),
          ),
          BlocListener<LoginBloc, LoginState>(
            listener: (context, state) {
              if (state is LoginSuccess) {
                context.replaceRoute(const LoginRoute());
              }
            },
            child: IconButton(
              onPressed: () => context.read<LoginBloc>().add(Logout()),
              icon: const Icon(
                Icons.logout_rounded,
                color: Colors.deepPurple,
              ),
            ),
          ),
        ],
      ),
      body: BlocProvider(
        create: (context) => serviceLocator<StoryBloc>()..add(LoadStory()),
        child: BlocBuilder<StoryBloc, StoryState>(
          builder: (context, state) {
            if (state is StoryLoading) {
              return ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const LoadingShimmer();
                },
              );
            } else if (state is StoryLoaded) {
              final data = state.stories;
              return NotificationListener<ScrollNotification>(
                onNotification: (scrollNotification) {
                  if (scrollNotification is ScrollEndNotification &&
                      scrollNotification.metrics.pixels >=
                          scrollNotification.metrics.maxScrollExtent) {
                    context.read<StoryBloc>().add(LoadMoreStory());
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
                        )
                            .animate()
                            .fade(duration: 500.ms)
                            .scale(duration: 500.ms),
                      );
                    } else {
                      return state.hasReachedMax
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
            } else if (state is StoryError) {
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
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pushRoute(const AddStoryRoute()),
        child: const Icon(Icons.add_a_photo_rounded),
      ),
    );
  }
}
