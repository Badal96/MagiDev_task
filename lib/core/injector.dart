import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:magic_devs_task/data/remote_repositories/feed_repository.dart';
import 'package:magic_devs_task/view/screens/feed_screen/bloc/feed_bloc.dart';

final sl = GetIt.instance;

void setupServiceLocator() {
  // API Clients
  sl.registerLazySingleton<Dio>(
      () => Dio(BaseOptions(baseUrl: 'http://18.217.172.204/api')));
  // Repositories
  sl.registerLazySingleton<FeedRepository>(
      () => FeedRepository(dioClient: sl()));

  //Blocs
  sl.registerLazySingleton(() => FeedBloc(feedRepository: sl()));
}
