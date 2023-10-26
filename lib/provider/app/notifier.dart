import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/repository/common.dart';

part 'notifier.freezed.dart';

final appStateProvider =
    StateNotifierProvider<AppStateNotifier, AppState>((ref) {
  return AppStateNotifier(
    repository: ref.watch(commonRepositoryProvider),
  );
});

@freezed
class AppState with _$AppState {
  /// メンテナンスオフ
  const factory AppState.maintenanceOff({
    @Default(false) bool showIndicator,
  }) = AppStateMaintenanceOff;

  /// メンテナンスオン
  const factory AppState.maintenanceOn() = AppStateMaintenanceOn;

  /// エラー
  const factory AppState.error() = AppStateError;
}

class AppStateNotifier extends StateNotifier<AppState> {
  AppStateNotifier({
    required this.repository,
  }) : super(const AppStateMaintenanceOff());

  final CommonRepository repository;

  void setErrorMode() {
    state = const AppState.error();
  }

  void setMaintenanceMode() {
    state = const AppState.maintenanceOn();
  }

  void releaseMaintenanceMode() {
    state = const AppState.maintenanceOff();
  }

  void showIndicator() {
    state = maintenanceOffState.copyWith(showIndicator: true);
  }

  void unShowIndicator() {
    state = maintenanceOffState.copyWith(showIndicator: false);
  }

  AppStateMaintenanceOff get maintenanceOffState =>
      state as AppStateMaintenanceOff;

  /// 現在のアプリの状態の取得
  /// 関数内ではproviderが更新されても、その変更を受け取れないので、
  /// 関数内で最新のアプリの状態(メンテナンスOff等)を取得したいため
  AppState get getMode => state;
}
