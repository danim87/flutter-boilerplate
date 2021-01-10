import 'package:flutter/material.dart';

class TabBarModel extends ChangeNotifier {
  final PageController tabController = PageController(initialPage: 0);
  int selectedTabIndex = 0;

  TabBarModel() {}

  void selectTab(int index) {
    tabController.jumpToPage(index);
    selectedTabIndex = tabController.page.round();
    notifyListeners();
  }
}
