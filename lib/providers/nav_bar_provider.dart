import 'package:flutter/material.dart';

class NavBarProvider extends ChangeNotifier {
  final PageController navigationController = PageController(initialPage: 0);
  int selectedTabIndex = 0;

  NavBarProvider() {}

  void selectTab(int index) {
    navigationController.jumpToPage(index);
    selectedTabIndex = navigationController.page.round();
    notifyListeners();
  }
}
