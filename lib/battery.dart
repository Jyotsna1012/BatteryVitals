import 'package:flutter/services.dart';
import 'dart:io';

class Battery {
  static const MethodChannel _channel = MethodChannel('battery');

  Future<int> getBatteryLevel() async {
    final int batteryLevel = await _channel.invokeMethod('getBatteryLevel');
    return batteryLevel;
  }

  bool get isAndroid => Platform.isAndroid;
  bool get isIOS => Platform.isIOS;
}
