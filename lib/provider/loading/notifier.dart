import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../util/util.dart';
import '../app/notifier.dart';

///アプリのインジケーターを管理するクラス
///ローディングを表示させたくない場合は通信処理の前にswitchIndicatorProviderのstateをindicatorOFFにする。

final loadingProvider = StateNotifierProvider<LoadingNotifier, bool>((ref) {
  final showIndicator = ref
          .watch(appStateProvider)
          .mapOrNull(maintenanceOff: (s) => s.showIndicator) ??
      false;
  return LoadingNotifier(showIndicator: showIndicator, ref: ref);
});

class LoadingNotifier extends StateNotifier<bool> {
  LoadingNotifier({required this.ref, required this.showIndicator})
      : super(false);

  final bool showIndicator;
  final StateNotifierProviderRef ref;

  Future<T> whileLoading<T>(
    Future<T> Function() future,
  ) {
    if (!showIndicator) {
      return future();
    }
    return Future.microtask(toLoading)
        .then((_) => future())
        .whenComplete(toComplete);
  }

  void toLoading() {
    IHSUtil.showLoadingDialog();
    state = true;
  }

  void toComplete() {
    IHSUtil.popLoadingDialog();
    state = false;
  }
}
