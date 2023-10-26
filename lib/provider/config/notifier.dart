import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/config/model.dart';
import '../../data/model/response/model.dart';
import '../../data/repository/common.dart';
import '../../view/page/agreement_content/type.dart';

part 'notifier.freezed.dart';

final appConfigProvider =
    StateNotifierProvider<AppConfigStateNotifier, AppConfigState>((ref) {
  return AppConfigStateNotifier(
    ref: ref,
    repository: ref.watch(commonRepositoryProvider),
  );
});

ConfigModel? appSyncConfig;
bool configChecked = false;

@freezed
class AppConfigState with _$AppConfigState {
  /// 初期状態(アプリ起動直後)
  const factory AppConfigState.init() = AppConfigStateInit;

  const factory AppConfigState.loaded({
    required ConfigModel config,
  }) = AppConfigStateLoaded;
}

class AppConfigStateNotifier extends StateNotifier<AppConfigState> {
  AppConfigStateNotifier({
    required this.ref,
    required this.repository,
  }) : super(const AppConfigStateInit());

  final StateNotifierProviderRef ref;
  final CommonRepository repository;
  static const _mapKeyPrivacyPolicy = 'privacy_policy_url';
  static const _mapKeyGuide = 'guide_url';

  AppConfigStateLoaded get getLoaded => state as AppConfigStateLoaded;

  // コンフィグ取得
  Future<void> fetch() async {
    await repository.fetchConfig().then(
      (IHSResponse<ConfigModel> response) {
        final config = response.data;
        if (response.status == ResponseStatus.failure || config == null) {
          return;
        }

        appSyncConfig = config;
        state = AppConfigState.loaded(config: config);
      },
    ).catchError((_) {});
  }

  String getUrl(AgreementContentType type) {
    var url = '';
    final config = getLoaded.config.list;
    switch (type) {
      case AgreementContentType.privacyPolicy:
        url = config.firstWhere((e) => e.key == _mapKeyPrivacyPolicy).value;
        break;
      case AgreementContentType.terms:
        url = config.firstWhere((e) => e.key == _mapKeyGuide).value;
        break;
    }

    return url;
  }
}
