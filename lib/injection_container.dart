import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:interview_project/application/use_cases/list/list.dart';
import 'package:interview_project/main.dart';
import 'package:interview_project/presentation/widgets/shared/dialog/easy_loading/easy_loading.dart';

import 'domain/repositories/list_repository.dart';
import 'infrastructure/data_source/database/database.dart';
import 'infrastructure/data_source/list/list.dart';
import 'infrastructure/network/client.dart';
import 'infrastructure/network/network_info.dart';
import 'infrastructure/repositories/list_repository_impl.dart';

final sl = GetIt.instance;

Future<void> init() async {
  final dioClient = Dio(config);

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

  //! Storage
  final storage = FlutterSecureStorage();
  sl.registerLazySingleton(() => storage);

  //! Data sources
  sl.registerLazySingleton<ListLocalDataSource>(
      () => IListLocalDataSource(sl()));
  sl.registerLazySingleton<ListRemoteDataSource>(
      () => IListRemoteDataSource(sl()));

  //! Repository
  sl.registerLazySingleton<ListRepository>(
      () => IListRepository(listRemoteService: sl(), listLocalService: sl()));

  //! Use case
  sl.registerLazySingleton(() => GetToSellList(sl()));
  sl.registerLazySingleton(() => GetToBuyList(sl()));
  sl.registerLazySingleton(() => GetToCallList(sl()));
}
