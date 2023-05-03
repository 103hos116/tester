
import 'tester_platform_interface.dart';

class Tester {
  Future<String?> getPlatformVersion() {
    return TesterPlatform.instance.getPlatformVersion();
  }
}
