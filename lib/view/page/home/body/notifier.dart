import 'package:family_notes/data/repository/common.dart';
import 'package:family_notes/data/request/consent/request.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../data/local/local_client.dart';
import '../../../../data/model/consent/model.dart';
import '../../../../environment.dart';
import '../../../../util/util.dart';
import '../../../style/texts.dart';
import 'state.dart';

/// ホーム画面のBodyの状態を管理するプロバイダー
final homeBodyPageStateProvider = AutoDisposeStateNotifierProvider<
    HomeBodyPageStateNotifier, HomeBodyPageState>((ref) {
  return HomeBodyPageStateNotifier(
    ref: ref,
    commonRepository: ref.watch(commonRepositoryProvider),
  );
});

class HomeBodyPageStateNotifier extends StateNotifier<HomeBodyPageState> {
  HomeBodyPageStateNotifier({
    required this.ref,
    required this.commonRepository,
  }) : super(const HomeBodyPageState.init());

  final StateNotifierProviderRef ref;
  final CommonRepository commonRepository;

  void setup({
    required HomeLayout initialLayout,
  }) {
    state = HomeBodyPageState.loaded(currentLayout: initialLayout);
  }

  Future<void> checkConsent({
    required Function(List<ConsentModel> consentList) onSuccess,
  }) async {
    if (syncTmpParams[LocalTmpKeyType.agreementTime]! <
        DateTime.now().millisecondsSinceEpoch - Environment.reAgreement) {
      syncTmpParams[LocalTmpKeyType.agreementTime] =
          DateTime.now().millisecondsSinceEpoch;
      await commonRepository.fetchUserConsentContents().then((response) {
        final data = response.data;
        if (response.isFailure || data == null) {
          _showError(response.msg ?? IHSTexts.error);
          return;
        }
        localAgreementData = data.list;
        onSuccess(data.list);
      }).catchError((_) {});
    } else if (localAgreementData != null) {
      debugPrint('agreement onSuccess by local');
      onSuccess(localAgreementData!);
    } else {
      debugPrint('agreement calling');
    }
  }

  Future<void> onTap() async {
    switch ((state as HomeBodyPageStateLoaded).currentLayout) {
      case HomeLayout.baby:
        state = const HomeBodyPageState.loaded(currentLayout: HomeLayout.child);

        break;
      case HomeLayout.child:
        state = const HomeBodyPageState.loaded(currentLayout: HomeLayout.baby);
        break;
    }
  }

  Future<void> updateConsent(
      {required int type, required int consentId}) async {
    final request = ConsentContentsConsentRequest(
      type: type,
      consentId: consentId,
    );
    await commonRepository
        .updateConsentContents(request: request)
        .catchError((_) {});
  }

  void _showError(String msg) {
    IHSUtil.showSnackBar(msg: msg);
  }
}
