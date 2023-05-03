import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'tester_method_channel.dart';

abstract class TesterPlatform extends PlatformInterface {
  /// Constructs a TesterPlatform.
  TesterPlatform() : super(token: _token);

  static final Object _token = Object();

  static TesterPlatform _instance = MethodChannelTester();

  /// The default instance of [TesterPlatform] to use.
  ///
  /// Defaults to [MethodChannelTester].
  static TesterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [TesterPlatform] when
  /// they register themselves.
  static set instance(TesterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
