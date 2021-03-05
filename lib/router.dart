import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'widgets/application_container/application_container.dart';

import 'widgets/settings/settings.dart';

abstract class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => ApplicationContainer(),
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
