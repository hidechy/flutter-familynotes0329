import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class SettingNotificationState with _$SettingNotificationState {
  const factory SettingNotificationState.loading() =
      SettingNotificationStateLoading;

  const factory SettingNotificationState.loaded({
    // 有効無効
    @Default(true) bool permission,
  }) = SettingNotificationStateLoaded;
}
