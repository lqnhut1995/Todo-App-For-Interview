import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview_project/presentation/widgets/shared/dialog/easy_loading/easy_loading.dart';
import 'package:interview_project/routes.dart';
import 'application/state/config_bloc.dart';
import 'injection_container.dart' as di;
import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

late BaseOptions aqConfig;

void main() async {
  aqConfig = BaseOptions(
    validateStatus: (status) => status == 200,
    baseUrl: '',
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
  late ConfigBloc configBloc;

  BuildContext get navContext => navigatorKey.currentContext!;

  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 100));
    super.initState();

    WidgetsBinding.instance.addObserver(this);

    configBloc = ConfigBloc()..getTest();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ConfigBloc>.value(value: configBloc),
      ],
      child: BlocBuilder<ConfigBloc, ConfigState>(
        buildWhen: (p, c) => p.languageFont != c.languageFont,
        builder: (_, state) {
          return MaterialApp(
            initialRoute: Routes.home,
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
        },
      ),
    );
  }
}
