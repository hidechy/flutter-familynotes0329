import 'dart:async';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'app.dart';
import 'data/local/local_client.dart';
import 'data/service/firebase/core.dart';
import 'data/service/firebase/messaging.dart';

Future<void> main() async {
  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    // 縦固定
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    // Firebase初期設定
    await const FirebaseCoreServiceImpl().initializeApp();

    //SharedPreferenceを同期で扱う
    final localClient = LocalClient();
    final packageInfo = await PackageInfo.fromPlatform();

    await localClient.set(
        LocalKeyType.isDebugBuild, packageInfo.packageName.endsWith('.dev'));
    for (final key in LocalKeyType.values) {
      final dynamic prefValue = await localClient.get(key);
      if (prefValue is int) {
        if (key == LocalKeyType.userId) {
          await FirebaseCrashlytics.instance
              .setUserIdentifier(prefValue.toString());
        }
        syncPrefInt[key] = prefValue;
        debugPrint('sharedp int:$key:' + prefValue.toString());
      }
      if (prefValue is String) {
        syncPrefString[key] = prefValue;
      }
    }
    if (!syncPrefBool[LocalKeyType.isDebugBuild]!) {
      debugPrint = (String? message, {int? wrapWidth}) {
        FirebaseCrashlytics.instance.log(message.toString());
      };
    }

    // バックグラウンド時の通知設定（Android向け）
    FirebaseMessagingServiceImpl.onBackgroundMessage();

    runApp(const ProviderScope(child: MyApp()));
  }, (error, stackTrace) {
    FirebaseCrashlytics.instance.recordError(error, stackTrace);
  });
}
