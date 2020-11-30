import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:html_video/html_video.dart';

void main() {
  const MethodChannel channel = MethodChannel('html_video');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await HtmlVideo.platformVersion, '42');
  });
}
