import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/bottom_nav_bar_provider.dart';
import '../../services/size_service.dart';
import '../bottom_nav_bar/bottom_nav_bar.dart';
import '../home/home.dart';
import '../settings/settings.dart';

class ApplicationContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    initSizeService(context);

    return Scaffold(
      body: PageView(
        controller: Provider.of<BottomNavBarProvider>(context).navigationController,
        children: <Widget>[
          HomePage(),
          SettingsPage()
        ],
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}