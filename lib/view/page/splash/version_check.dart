// ignore_for_file: avoid_dynamic_calls

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../../provider/config/notifier.dart';
import '../../../util/util.dart';

final Provider<VersionCheck> versionCheckProvider = Provider<VersionCheck>(
  (ProviderRef<VersionCheck> ref) => VersionCheck(
    appConfigState: ref.read(appConfigProvider),
  ),
);

// true:アップデートする必要がない 　false:アップデートする必要がある
class VersionCheck {
  VersionCheck({required this.appConfigState});

  final AppConfigState appConfigState;

  bool isHideDialog = true;

  Future<bool> checkAppVersion() async {
    if (appSyncConfig == null) {
      return true;
    }

    final config = appSyncConfig!.list;
    final severVer = config.firstWhere((e) => e.key == 'version').value;
    try {
      final packageInfo = await PackageInfo.fromPlatform();
      final version = packageInfo.version;
      return IHSUtil.compareVersion(severVer, version);
    } on Exception catch (e) {
      debugPrint(e.toString());
    }

    return true;
  }
}
