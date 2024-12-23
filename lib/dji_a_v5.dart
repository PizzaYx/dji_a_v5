
import 'dji_a_v5_platform_interface.dart';

class DjiAV5 {
  Future<String?> getPlatformVersion() {
    return DjiAV5Platform.instance.getPlatformVersion();
  }
}
