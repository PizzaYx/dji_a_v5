import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'dji_a_v5_method_channel.dart';

abstract class DjiAV5Platform extends PlatformInterface {
  /// Constructs a DjiAV5Platform.
  DjiAV5Platform() : super(token: _token);

  static final Object _token = Object();

  static DjiAV5Platform _instance = MethodChannelDjiAV5();

  /// The default instance of [DjiAV5Platform] to use.
  ///
  /// Defaults to [MethodChannelDjiAV5].
  static DjiAV5Platform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DjiAV5Platform] when
  /// they register themselves.
  static set instance(DjiAV5Platform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
