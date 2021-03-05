import 'dart:async';

import 'package:flutter/material.dart';

//MediaQuery.of(context).size.height and width might return zero in release mode.
//This is due to increased startup speed and the native platform reporting the actual screen size with a delay.
//This service thus monitors the device size until the native platform reports a value greater than zero
class DeviceSizeService {
  static final DeviceSizeService _instance = DeviceSizeService._();
  factory DeviceSizeService() => _instance;
  DeviceSizeService._();

  static const int checkDeviceSizePeriodDurationInMs = 50;

  Future<bool> isDeviceSizeSet(BuildContext context) {
    StreamSubscription _deviceWidthStreamSubscription;
    Stream<double> deviceWidthStream = Stream<double>.periodic(
        Duration(milliseconds: checkDeviceSizePeriodDurationInMs), (duration) => MediaQuery.of(context).size.width);

    final Completer<bool> completer = Completer<bool>();
    _deviceWidthStreamSubscription = deviceWidthStream.listen((deviceWidth) {
      if (deviceWidth > 0 && !completer.isCompleted) {
        _deviceWidthStreamSubscription.cancel();
        completer.complete(true);
      }
    });

    return completer.future;
  }
}
