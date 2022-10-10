import 'package:flutter/material.dart';

import 'presentation/pages/home/home.dart';

class Routes {
  Routes._();

  static const String initRoute = home;

  static const home = HomePage.route_id;

  static Route onGenerateRoute(BuildContext context, RouteSettings settings) {
    // final args = settings.arguments;
    Widget page;

    switch (settings.name) {
      default:
        page = const HomePage();
        break;
    }

    return MaterialPageRoute(builder: (_) => page, settings: settings);
  }
}
