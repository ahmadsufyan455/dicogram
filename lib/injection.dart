import 'package:dicogram/data/repository/add_story_repository_impl.dart';
import 'package:dicogram/data/repository/detail_repository_impl.dart';
import 'package:dicogram/data/repository/login_repository_impl.dart';
import 'package:dicogram/data/repository/register_repository_impl.dart';
import 'package:dicogram/data/repository/story_repository_impl.dart';
import 'package:dicogram/data/source/remote_datasource_impl.dart';
import 'package:dicogram/domain/repository/add_story_repository.dart';
import 'package:dicogram/domain/repository/detail_repository.dart';
import 'package:dicogram/domain/repository/login_repository.dart';
import 'package:dicogram/domain/repository/register_repository.dart';
import 'package:dicogram/domain/repository/story_repository.dart';
import 'package:dicogram/domain/usecases/add_story_usecase.dart';
import 'package:dicogram/domain/usecases/detail_usecase.dart';
import 'package:dicogram/domain/usecases/login_usecase.dart';
import 'package:dicogram/domain/usecases/register_usecase.dart';
import 'package:dicogram/domain/usecases/story_usecase.dart';
import 'package:dicogram/presentation/pages/add/bloc/add_story_bloc.dart';
import 'package:dicogram/presentation/pages/auth/login/bloc/login_bloc.dart';
import 'package:dicogram/presentation/pages/auth/register/bloc/register_bloc.dart';
import 'package:dicogram/presentation/pages/detail/bloc/detail_story_bloc.dart';
import 'package:dicogram/presentation/pages/home/bloc/story_bloc.dart';
import 'package:dicogram/utils/constants.dart';
import 'package:get_it/get_it.dart';

import 'data/source/remote_datasource.dart';
import 'package:dio/dio.dart';

final serviceLocator = GetIt.I;

Future<void> init() async {
  // ! presentation layer
  serviceLocator
      .registerFactory(() => LoginBloc(loginUseCase: serviceLocator()));
  serviceLocator
      .registerFactory(() => RegisterBloc(registerUsecase: serviceLocator()));
  serviceLocator
      .registerFactory(() => StoryBloc(storyUseCase: serviceLocator()));
  serviceLocator
      .registerFactory(() => DetailStoryBloc(detailUseCase: serviceLocator()));
  serviceLocator
      .registerFactory(() => AddStoryBloc(addStoryUseCase: serviceLocator()));

  // ! domain layer
  serviceLocator.registerLazySingleton(
      () => LoginUseCase(loginRepository: serviceLocator()));
  serviceLocator.registerLazySingleton(
      () => RegisterUsecase(registerRepository: serviceLocator()));
  serviceLocator.registerLazySingleton(
      () => StoryUseCase(storyRepository: serviceLocator()));
  serviceLocator.registerLazySingleton(
      () => DetailUseCase(detailRepository: serviceLocator()));
  serviceLocator.registerLazySingleton(
      () => AddStoryUseCase(addStoryRepository: serviceLocator()));

  // ! data layer
  serviceLocator.registerLazySingleton<LoginRepository>(
      () => LoginRepositoryImpl(remoteDataSource: serviceLocator()));
  serviceLocator.registerLazySingleton<RegisterRepository>(
      () => RegisterRepositoryImpl(remoteDataSource: serviceLocator()));
  serviceLocator.registerLazySingleton<StoryRepository>(
      () => StoryRepositoryImpl(remoteDataSource: serviceLocator()));
  serviceLocator.registerLazySingleton<DetailRepository>(
      () => DetailRepositoryImpl(remoteDataSource: serviceLocator()));
  serviceLocator.registerLazySingleton<AddStoryRepository>(
      () => AddStoryRepositoryImpl(remoteDataSource: serviceLocator()));

  serviceLocator.registerLazySingleton<RemoteDataSource>(
      () => RemoteDataSourceImpl(dio: serviceLocator()));

  // ! external
  serviceLocator
      .registerLazySingleton(() => Dio(BaseOptions(baseUrl: baseURL)));
}
