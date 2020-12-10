import 'dart:async';

import 'package:flutter/services.dart';

class SpeechPopup {
  static const MethodChannel _channel =
      const MethodChannel('speech_popup');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
