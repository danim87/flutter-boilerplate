import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'app.dart';
import 'widgets/home/home.dart';
import 'widgets/settings/settings.dart';

abstract class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => BoilerPlateApplication(),
        );
      case '/settings':
        return MaterialPageRoute(
          builder: (context) => SettingsPage(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
