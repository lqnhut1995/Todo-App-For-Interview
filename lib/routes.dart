import 'package:flutter/material.dart';
import 'package:interview_project/presentation/pages/pages.dart';

class Routes {
  Routes._();

  static const String initRoute = home;

  static const home = HomePage.route_id;
  static const callList = CallListPage.route_id;
  static const buyList = BuyListPage.route_id;
  static const sellList = SellListPage.route_id;

  static Route onGenerateRoute(BuildContext context, RouteSettings settings) {
    Widget page;

    switch (settings.name) {
      case callList:
        page = CallListPage();
        break;
      case buyList:
        page = BuyListPage();
        break;
      case sellList:
        page = SellListPage();
        break;
      default:
        page = const HomePage();
        break;
    }

    return MaterialPageRoute(builder: (_) => page, settings: settings);
  }
}
