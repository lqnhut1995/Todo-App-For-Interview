import 'package:flutter/material.dart';
import 'package:interview_project/presentation/widgets/shared/dialog/easy_loading/easy_loading.dart';
import 'package:interview_project/routes.dart';
import 'injection_container.dart' as di;
import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

late BaseOptions config;

void main() async {
  config = BaseOptions(
    validateStatus: (status) => status == 200,
    baseUrl: 'https://my-json-server.typicode.com',
    connectTimeout: 120 * 1000,
    receiveTimeout: 120 * 1000,
  );

  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) => runApp(App()));
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> with WidgetsBindingObserver {
  final navigatorKey = GlobalKey<NavigatorState>();

  BuildContext get navContext => navigatorKey.currentContext!;

  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 100));
    super.initState();

    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.initRoute,
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) {
        return Routes.onGenerateRoute(
          navContext,
          settings,
        );
      },
      builder: EasyLoading.init(
        builder: (_, child) => child!,
      ),
    );
  }
}
