import 'package:flutter/material.dart';
import '../interfaces/connectivity_status_interface.dart';

import '../services/connectivity_service.dart';

class AppProvider extends ChangeNotifier {
  ConnectivityStatus connectivityStatus = ConnectivityStatus.Offline;
  int counter = 0;

  AppProvider() {}

  void incrementCounter() {
    counter++;
    notifyListeners();
  }

  Future<void> setConnectivityState() async {
    connectivityStatus = await ConnectivityService().checkConnectivity();
    notifyListeners();
  }
}
