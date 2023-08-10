import 'package:dicogram/data/source/remote_data_source.dart';
import 'package:dicogram/data/source/story_repository.dart';
import 'package:dicogram/l10n/bloc/language_bloc.dart';
import 'package:dicogram/router_v2.dart';
import 'package:dicogram/view/add/bloc/add_story_bloc.dart';
import 'package:dicogram/view/add/cubit/image_cubit.dart';
import 'package:dicogram/view/auth/login/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final routerV2 = RouterV2();
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(
          create: (context) => LoginBloc(
            StoryRepository(RemoteDataSourceImpl()),
          ),
        ),
        BlocProvider<AddStoryBloc>(
          create: (context) => AddStoryBloc(
            StoryRepository(RemoteDataSourceImpl()),
          ),
        ),
        BlocProvider<ImageCubit>(create: (context) => ImageCubit()),
        BlocProvider<LanguageBloc>(
            create: (context) => LanguageBloc()..add(GetLanguage())),
      ],
      child: BlocBuilder<LanguageBloc, LanguageState>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Dicogram',
            locale: state.selectedLanguage.value,
            supportedLocales: AppLocalizations.supportedLocales,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            routerConfig: routerV2.config(),
          );
        },
      ),
    );
  }
}
