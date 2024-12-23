import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'dji_a_v5_platform_interface.dart';

/// An implementation of [DjiAV5Platform] that uses method channels.
class MethodChannelDjiAV5 extends DjiAV5Platform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('dji_a_v5');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
