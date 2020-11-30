
import 'dart:async';

import 'package:flutter/services.dart';

class HtmlVideo {
  static const MethodChannel _channel =
      const MethodChannel('html_video');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
