// ignore_for_file: constant_identifier_names, unused_element

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/consent/model.dart';

final Provider<LocalClient> localClientProvider = Provider<LocalClient>(
  (ProviderRef<LocalClient> ref) => LocalClient(),
);

enum LocalKeyType {
  // ユーザーID
  userId,
  // アクセストークン
  accessToken,
  // デバイストークン
  deviceToken,
  // 選択中の子どもID
  selectedChildId,
  // 選択中の子どもタイプ(babyまたはchild)
  selectedChildType,
  // 開発ビルドかどうか
  isDebugBuild,
  // 認証コード
  authCode,
}

enum LocalTmpKeyType {
  //遷移先ページタイプ
  pageType,
  pageTypeVaccine,
  pageNoticeId,
  agreementTime,
}

Map<LocalTmpKeyType, int?> syncTmpParams = {
  LocalTmpKeyType.pageType: null,
  LocalTmpKeyType.pageTypeVaccine: null,
  LocalTmpKeyType.pageNoticeId: 0,
  LocalTmpKeyType.agreementTime: 0,
};

Map<LocalKeyType, int?> syncPrefInt = {
  LocalKeyType.userId: null,
  LocalKeyType.selectedChildId: null,
};
Map<LocalKeyType, String?> syncPrefString = {
  LocalKeyType.accessToken: null,
  LocalKeyType.selectedChildType: null,
  LocalKeyType.deviceToken: null,
  LocalKeyType.authCode: null,
};
Map<LocalKeyType, bool> syncPrefBool = {
  LocalKeyType.isDebugBuild: false,
};

List<ConsentModel>? localAgreementData;

extension on LocalKeyType {
  String get key {
    switch (this) {
      case LocalKeyType.userId:
        return 'USER_ID';
      case LocalKeyType.accessToken:
        return 'ACCESS_TOKEN';
      case LocalKeyType.selectedChildId:
        return 'SELECTED_CHILD_ID';
      case LocalKeyType.selectedChildType:
        return 'SELECTED_CHILD_TYPE';
      case LocalKeyType.isDebugBuild:
        return 'IS_DEBUG_BUILD';
      case LocalKeyType.deviceToken:
        return 'DEVICE_TOKEN';
      case LocalKeyType.authCode:
        return 'AUTH_CODE';
    }
  }
}

class LocalClient {
  Future<void> set<T>(LocalKeyType type, T value) async {
    final prefs = await SharedPreferences.getInstance();
    if (value is String) {
      syncPrefString[type] = value;
      await prefs.setString(type.key, value);
    } else if (value is bool) {
      await prefs.setBool(type.key, value);
      syncPrefBool[type] = value;
    } else if (value is int) {
      syncPrefInt[type] = value;
      await prefs.setInt(type.key, value);
    } else if (value is List<String>) {
      await prefs.setStringList(type.key, value);
    } else {
      Exception('Not compatible type');
    }
  }

  Future<T?> get<T>(LocalKeyType type) async {
    final prefs = await SharedPreferences.getInstance();
    if (!prefs.containsKey(type.key)) {
      return null;
    }
    return prefs.get(type.key) as T?;
  }

  Future<void> remove(LocalKeyType type) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(type.key);
  }

  Future<void> allRemove() async {
    final prefs = await SharedPreferences.getInstance();
    for (final type in LocalKeyType.values) {
      await prefs.remove(type.key);
    }
  }
}
