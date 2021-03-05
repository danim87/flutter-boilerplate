import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/app_provider.dart';
import 'providers/nav_bar_provider.dart';
import 'router.dart';
import 'services/size_service.dart';
import 'widgets/bottom_nav_bar/bottom_nav_bar.dart';
import 'widgets/home/home.dart';
import 'widgets/settings/settings.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AppProvider()),
        ChangeNotifierProvider(create: (context) => NavBarProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Boilerplate Starter',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/',
        onGenerateRoute: AppRouter.generateRoute,
      ),
    );
  }
}