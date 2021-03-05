import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/bottom_nav_bar_provider.dart';
import '../../services/size_service.dart';
import 'bottom_nav_bar_item.dart';

class BottomNavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BottomNavBarState();
}

class BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: scaleWidth(80),
        padding: EdgeInsets.symmetric(
          vertical: scaleWidth(7),
          horizontal: scaleWidth(15),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: _buildBottomNavBarItems(),
        ),
      ),
      color: Colors.white,
    );
  }

  List<BottomNavBarItem> _buildBottomNavBarItems() {
    return [
      BottomNavBarItem(
          index: 0,
          selectedIndex: Provider.of<BottomNavBarProvider>(context).selectedTabIndex,
          onTap: Provider.of<BottomNavBarProvider>(context).selectTab,
          text: 'Home'),
      BottomNavBarItem(
          index: 1,
          selectedIndex: Provider.of<BottomNavBarProvider>(context).selectedTabIndex,
          onTap: Provider.of<BottomNavBarProvider>(context).selectTab,
          text: 'Settings')
    ];
  }
}
