import 'package:flutter_test/flutter_test.dart';
import 'package:dji_a_v5/dji_a_v5.dart';
import 'package:dji_a_v5/dji_a_v5_platform_interface.dart';
import 'package:dji_a_v5/dji_a_v5_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDjiAV5Platform
    with MockPlatformInterfaceMixin
    implements DjiAV5Platform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final DjiAV5Platform initialPlatform = DjiAV5Platform.instance;

  test('$MethodChannelDjiAV5 is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDjiAV5>());
  });

  test('getPlatformVersion', () async {
    DjiAV5 djiAV5Plugin = DjiAV5();
    MockDjiAV5Platform fakePlatform = MockDjiAV5Platform();
    DjiAV5Platform.instance = fakePlatform;

    expect(await djiAV5Plugin.getPlatformVersion(), '42');
  });
}
