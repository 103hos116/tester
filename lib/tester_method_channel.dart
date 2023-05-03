import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'tester_platform_interface.dart';

/// An implementation of [TesterPlatform] that uses method channels.
class MethodChannelTester extends TesterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('tester');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
