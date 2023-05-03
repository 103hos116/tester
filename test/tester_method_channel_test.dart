import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tester/tester_method_channel.dart';

void main() {
  MethodChannelTester platform = MethodChannelTester();
  const MethodChannel channel = MethodChannel('tester');

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
    expect(await platform.getPlatformVersion(), '42');
  });
}
