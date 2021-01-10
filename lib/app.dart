import 'package:flutter/material.dart';
import 'package:flutter_boilerplate_starter/providers/nav_bar_provider.dart';
import 'package:flutter_boilerplate_starter/widgets/nav_bar/nav_bar.dart';
import 'package:provider/provider.dart';

import 'providers/app_provider.dart';
import 'router.dart';
import 'services/size_service.dart';
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

class BoilerPlateApplication extends StatefulWidget {
  @override
  _BoilerPlateApplicationState createState() => _BoilerPlateApplicationState();
}

class _BoilerPlateApplicationState extends State<BoilerPlateApplication> {
  @override
  Widget build(BuildContext context) {
    initSizeService(context);

    return Scaffold(
      body: PageView(
        controller: Provider.of<NavBarProvider>(context).navigationController,
        children: <Widget>[HomePage(), SettingsPage()],
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
