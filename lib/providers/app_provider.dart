import 'dart:convert';

import 'package:flutter/material.dart';

import '../interfaces/connectivity_status_interface.dart';
import '../interfaces/serialization/data_interface.dart';
import '../services/connectivity_service.dart';
import '../services/http_service.dart';

class AppProvider extends ChangeNotifier {
  ConnectivityStatus connectivityStatus = ConnectivityStatus.Offline;
  int counter = 0;
  late Data data;

  AppProvider() {}

  void incrementCounter() {
    counter++;
    notifyListeners();
  }

  Future<void> setConnectivityState() async {
    connectivityStatus = await ConnectivityService().checkConnectivity();
    notifyListeners();
  }

  Future<void> getDataFromAPI() async {
    final response = await HttpService().get(''); // PUT IN YOUR API URL

    dynamic decodedResponseBody = json.decode(response.body);

    data = Data.fromJson(
      decodedResponseBody as Map<String, dynamic>,
    );
  }
}
