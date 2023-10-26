import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/data/http/client.dart';
import '/data/http/path.dart';
import '../model/response/model.dart';

/// 汎用Repository
abstract class NotificationPermissionRepository {
  /// 通知設定取得
  Future<IHSResponse<String>> getNotificationPermission();

  /// 通知設定更新
  Future<IHSResponse<Empty>> changeNotificationPermission({
    required int enable,
  });
}

class NotificationPermissionRepositoryImpl
    implements NotificationPermissionRepository {
  NotificationPermissionRepositoryImpl({
    required this.client,
  });

  final IHSHttpClient client;

  @override
  Future<IHSResponse<String>> getNotificationPermission() async {
    final response = await client.post(
      IHSAPIPath.notificationPull,
    );
    return IHSResponse<String>.fromJson(
      response,
      (Object? json) {
        if (response['data'] == null) {
          return null;
        }
        final data =
            NotificationPermissionJson.fromJson(json! as Map<String, dynamic>);
        return data.permission;
      },
    );
  }

  @override
  Future<IHSResponse<Empty>> changeNotificationPermission({
    required int enable,
  }) async {
    final response = await client.post(
      IHSAPIPath.notificationChange,
      body: NotificationPermissionJson(permission: enable.toString()).toJson(),
    );
    return IHSResponse<int>.fromJson(
      response,
      (Object? json) => null,
    );
  }
}

class NotificationPermissionJson {
  NotificationPermissionJson({required this.permission});

  NotificationPermissionJson.fromJson(Map<String, dynamic> json)
      : permission = json['push_notification'] as String;
  final String permission;

  Map<String, dynamic> toJson() {
    return {'push_notification': permission};
  }
}

final Provider<NotificationPermissionRepository>
    notificationPermissionRepositoryProvider =
    Provider<NotificationPermissionRepository>(
  (ProviderRef<NotificationPermissionRepository> ref) {
    final client = ref.read(httpClientProvider);
    return NotificationPermissionRepositoryImpl(
      client: client,
    );
  },
);
