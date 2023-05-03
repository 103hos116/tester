import 'package:flutter_test/flutter_test.dart';
import 'package:tester/tester.dart';
import 'package:tester/tester_platform_interface.dart';
import 'package:tester/tester_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockTesterPlatform
    with MockPlatformInterfaceMixin
    implements TesterPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final TesterPlatform initialPlatform = TesterPlatform.instance;

  test('$MethodChannelTester is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelTester>());
  });

  test('getPlatformVersion', () async {
    Tester testerPlugin = Tester();
    MockTesterPlatform fakePlatform = MockTesterPlatform();
    TesterPlatform.instance = fakePlatform;

    expect(await testerPlugin.getPlatformVersion(), '42');
  });
}
