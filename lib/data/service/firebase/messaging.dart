// ignore_for_file: constant_identifier_names

import 'dart:async';
import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../app.dart';
import '../../local/local_client.dart';
import '../../page/page.dart';

final Provider<FirebaseMessagingService> firebaseMessagingServiceProvider =
    Provider<FirebaseMessagingService>(
  (_) {
    final messaging = FirebaseMessaging.instance;
    return FirebaseMessagingServiceImpl(
      messaging: messaging,
    );
  },
);

const String androidIcon = '@drawable/suilog_statusbar_icon';

abstract class FirebaseMessagingService {
  /// 通知サービスの初期化
  Future<void> initialize({
    required Function(String) onLoadedToken,
  });

  /// 新しいFcmTokenの生成監視
  StreamSubscription<String> listenNewFcmToken({
    required Function(String) onLoadedToken,
  });

  /// FCM トークンを取得
  Future<String?> getFCMToken();

  /// (iOS のみ) APNs トークンを取得
  Future<String?> getAPNsToken();
}

class FirebaseMessagingServiceImpl implements FirebaseMessagingService {
  const FirebaseMessagingServiceImpl({
    required this.messaging,
  });

  final FirebaseMessaging messaging;

  @override
  Future<void> initialize({
    required Function(String) onLoadedToken,
  }) async {
    await messaging.requestPermission().then(
      (settings) {
        if (settings.authorizationStatus != AuthorizationStatus.authorized) {
          debugPrint('通知が許可されていません');
        }
      },
    );
    await FirebaseMessaging.instance
        .getInitialMessage()
        .then((RemoteMessage? message) async {
      //Tap from closed
      if (message != null) {
        final data = message.data;
        debugPrint('FCM Tap from closed' + data.toString());
        if (data.containsKey('page')) {
          syncTmpParams[LocalTmpKeyType.pageType] =
              int.parse(data['page'].toString());
        }
        if (data.containsKey('vaccineType')) {
          await setChildData(data);
          syncTmpParams[LocalTmpKeyType.pageTypeVaccine] =
              int.parse(data['vaccineType'].toString());
        }
        if (data.containsKey('notice_read_id')) {
          syncTmpParams[LocalTmpKeyType.pageNoticeId] =
              int.parse(data['notice_read_id'].toString());
        }
      }
    });

    // フォアグランド設定（iOS向け）
    await messaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    /// LocalNotification設定（Android向け）
    await FlutterLocalNotificationsPlugin().initialize(
        const InitializationSettings(
          android: AndroidInitializationSettings(androidIcon),
          iOS: DarwinInitializationSettings(),
        ),
        //Tap from Front
        onDidReceiveNotificationResponse: (NotificationResponse res) async {
      debugPrint('FCM Tap from Front:${res.payload}');
      final messageData =
          json.decode(res.payload ?? '') as Map<String, dynamic>;
      debugPrint('FCM Tap from Front:parse:' + messageData.toString());
      if (messageData.containsKey('page')) {
        debugPrint('FCM Tap from Front:key exists');
        if (messageData.containsKey('vaccineType')) {
          await setChildData(messageData);
          syncTmpParams[LocalTmpKeyType.pageTypeVaccine] =
              int.parse(messageData['vaccineType'].toString());
        }
        if (messageData.containsKey('notice_read_id')) {
          syncTmpParams[LocalTmpKeyType.pageNoticeId] =
              int.parse(messageData['notice_read_id'].toString());
        }
        await AppPage.createPageStack(
            int.parse(messageData['page'].toString()));
      }
    });

    FirebaseMessaging.onMessage.listen(
      (RemoteMessage message) {
        debugPrint('FCM Got a message whilst in the foreground!');
        showLocalNotification(message);
      },
    );

    //Tap from Background
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) async {
      debugPrint('FCM Tap from Background:' + message.data.toString());
      if (message.data.containsKey('page')) {
        if (message.data.containsKey('vaccineType')) {
          await setChildData(message.data);
          syncTmpParams[LocalTmpKeyType.pageTypeVaccine] =
              int.parse(message.data['vaccineType'].toString());
        }
        if (message.data.containsKey('notice_read_id')) {
          syncTmpParams[LocalTmpKeyType.pageNoticeId] =
              int.parse(message.data['notice_read_id'].toString());
        }
        await AppPage.createPageStack(
            int.parse(message.data['page'].toString()));
      }
    });

    final token = await messaging.getToken();
    if (token != null) {
      onLoadedToken(token);
    }
  }

  @override
  Future<String?> getFCMToken() async {
    final fcmToken = await messaging.getToken();

    if (fcmToken != null) {
      debugPrint('Succeed fetch FCM token: $fcmToken');
    } else {
      debugPrint('FCM token is null');
    }
    return fcmToken;
  }

  @override
  Future<String?> getAPNsToken() async {
    final apnsToken = await messaging.getAPNSToken();

    if (apnsToken != null) {
      debugPrint('Succeed fetch APNs token: $apnsToken');
    } else {
      debugPrint('APNs token is null');
    }
    return apnsToken;
  }

  /// バックグランド設定
  static void onBackgroundMessage() {
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  }

  static Future<void> _firebaseMessagingBackgroundHandler(
    RemoteMessage message,
  ) async {
    debugPrint('FCM backgroundHandler');
    //todo Debugビルドはサービス稼働できないので本番ビルドで下記の要否を確認する
    //少なくともアプリ起動していればスキップ
    //await Firebase.initializeApp();
  }

  static void showLocalNotification(RemoteMessage message) {
    final notification = message.notification;
    final android = message.notification?.android;

    if (notification != null && android != null) {
      FlutterLocalNotificationsPlugin().show(
        notification.hashCode,
        notification.title,
        notification.body,
        const NotificationDetails(
          android: AndroidNotificationDetails(
            'channel_id',
            'channel_name',
            importance: Importance.high,
            priority: Priority.high,
            enableLights: true,
          ),
          iOS: DarwinNotificationDetails(
            presentAlert: true,
            presentBadge: true,
            presentSound: true,
          ),
        ),
        payload: json.encode(message.data),
      );
    }
  }

  @override
  StreamSubscription<String> listenNewFcmToken({
    required Function(String) onLoadedToken,
  }) {
    return messaging.onTokenRefresh.listen((newToken) {
      onLoadedToken(newToken);
    });
  }

  Future<void> setChildData(Map<String, dynamic> data) async {
    final childId = int.parse(data['childId'].toString());
    await LocalClient().set(LocalKeyType.selectedChildId, childId);
    await LocalClient().set(LocalKeyType.selectedChildType, 'child');
    await myAppState.selectChild();
  }
}
