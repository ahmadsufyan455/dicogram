import 'package:dicogram/injection.dart';
import 'package:dicogram/l10n/bloc/language_bloc.dart';
import 'package:dicogram/presentation/pages/add/bloc/add_story_bloc.dart';
import 'package:dicogram/presentation/pages/add/cubit/image_cubit.dart';
import 'package:dicogram/presentation/pages/auth/login/bloc/login_bloc.dart';
import 'package:dicogram/presentation/pages/detail/cubit/maps_detail_cubit.dart';
import 'package:dicogram/router_v2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Dicogram extends StatelessWidget {
  const Dicogram({super.key});

  @override
  Widget build(BuildContext context) {
    final routerV2 = RouterV2();
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(
          create: (context) => serviceLocator<LoginBloc>(),
        ),
        BlocProvider<AddStoryBloc>(
          create: (context) => serviceLocator<AddStoryBloc>(),
        ),
        BlocProvider<ImageCubit>(create: (context) => ImageCubit()),
        BlocProvider<MapsDetailCubit>(create: (context) => MapsDetailCubit()),
        BlocProvider<LanguageBloc>(
          create: (context) =>
              LanguageBloc()..add(const LanguageEvent.getLanguage()),
        ),
      ],
      child: BlocBuilder<LanguageBloc, LanguageState>(
        builder: (context, state) {
          return MaterialApp.router(
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
