import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:interview_project/application/use_cases/config/config.dart';
import 'package:interview_project/main.dart';
import 'package:interview_project/presentation/widgets/shared/dialog/easy_loading/easy_loading.dart';

import 'domain/repositories/config_repository.dart';
import 'infrastructure/data_source/account/account.dart';
import 'infrastructure/data_source/config/config.dart';
import 'infrastructure/data_source/database/database.dart';
import 'infrastructure/network/client.dart';
import 'infrastructure/network/dio_logging_interceptors.dart';
import 'infrastructure/network/network_info.dart';
import 'infrastructure/repositories/config_repository_impl.dart';

final sl = GetIt.instance;

Future<void> init() async {
  final dioClient = Dio(aqConfig);

  EasyLoading.instance
    ..radius = 10.0
    ..dismissOnTap = false
    ..userInteractions = false
    ..maskType = EasyLoadingMaskType.custom
    ..loadingStyle = EasyLoadingStyle.light
    ..maskColor = Colors.black.withOpacity(0.4)
    ..indicatorWidget = CupertinoActivityIndicator();

  //! Core
  sl.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(DataConnectionChecker()));
  sl.registerLazySingleton<Client>(() => Client(dioClient));

  //! Database
  final db = await BaseDatabase().getDatabase();
  sl.registerLazySingleton(() => db);
  sl.registerLazySingleton<LocalDatabase>(() => ILocalDatabase(sl()));

  //! Storage
  final storage = FlutterSecureStorage();
  sl.registerLazySingleton(() => storage);

  //! Data sources
  sl.registerLazySingleton<ConfigLocalDataSource>(
      () => IConfigLocalDataSource(sl()));
  sl.registerLazySingleton<ConfigRemoteDataSource>(
      () => IConfigRemoteDataSource(client: sl()));
  sl.registerLazySingleton<AccountRemoteDataSource>(
      () => IAccountRemoteDataSource(client: sl()));
  sl.registerLazySingleton<AccountLocalDataSource>(
      () => IAccountLocalDataSource(storage: sl()));

  dioClient.interceptors.add(
    DioLoggingInterceptors(
      authLocalDataSource: sl(),
      authRemoteDataSource: sl(),
    ),
  );

  //! Repository
  sl.registerLazySingleton<ConfigRepository>(() =>
      IConfigRepository(configService: sl(), localDS: sl(), localDB: sl()));

  //! Use case
  sl.registerLazySingleton(() => GetTest(sl()));
}
