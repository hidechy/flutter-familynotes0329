import 'package:family_notes/util/util.dart';
import 'package:family_notes/view/style/texts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/data/repository/notification_settings.dart';
import 'state.dart';

/// 設定画面の状態を管理するプロバイダー
final settingNotificationProvider = AutoDisposeStateNotifierProvider<
    NotificationPermissionNotifier, SettingNotificationState>((ref) {
  return NotificationPermissionNotifier(
    ref: ref,
    notificationPermissionRepository:
        ref.watch(notificationPermissionRepositoryProvider),
  );
});

class NotificationPermissionNotifier
    extends StateNotifier<SettingNotificationState> {
  NotificationPermissionNotifier({
    required this.ref,
    required this.notificationPermissionRepository,
  }) : super(const SettingNotificationStateLoading()) {
    _getNotificationPermission();
  }

  final Ref ref;
  final NotificationPermissionRepository notificationPermissionRepository;

  SettingNotificationStateLoaded get _getLoaded =>
      state as SettingNotificationStateLoaded;

  Future<void> setNotificationPermission({required bool enable}) async {
    final setNum = enable ? 1 : 0;
    await notificationPermissionRepository
        .changeNotificationPermission(enable: setNum)
        .then((response) {
      if (response.isFailure) {
        _showError(response.msg ?? IHSTexts.error);
        return;
      }

      state = _getLoaded.copyWith(permission: enable);
    }).catchError((_) {});
  }

  /// 取得
  Future<void> _getNotificationPermission() async {
    await notificationPermissionRepository.getNotificationPermission().then(
      (response) {
        final data = response.data;
        if (response.isFailure || data == null) {
          _showError(response.msg ?? IHSTexts.error);
          return;
        }

        state = SettingNotificationStateLoaded(
          permission: int.parse(data) != 0,
        );
      },
    ).catchError((_) {});
  }

  void _showError(String msg) {
    IHSUtil.showSnackBar(msg: msg);
  }
}
