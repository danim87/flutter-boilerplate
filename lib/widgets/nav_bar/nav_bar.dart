import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/nav_bar_provider.dart';
import '../../services/size_service.dart';
import 'nav_bar_item.dart';

class NavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => NavBarState();
}

class NavBarState extends State<NavBar> {
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
          children: _buildNavBarItems(),
        ),
      ),
      color: Colors.white,
    );
  }

  List<NavBarItem> _buildNavBarItems() {
    return [
      NavBarItem(
        index: 0,
        selectedIndex: Provider.of<NavBarProvider>(context).selectedTabIndex,
        onTap: Provider.of<NavBarProvider>(context).selectTab,
        text: 'Home'
      ),
      NavBarItem(
        index: 1,
        selectedIndex: Provider.of<NavBarProvider>(context).selectedTabIndex,
        onTap: Provider.of<NavBarProvider>(context).selectTab,
        text: 'Settings'
      )
    ];
  }
}
