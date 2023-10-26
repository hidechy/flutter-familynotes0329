import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../data/model/consent/model.dart';
import '../../../data/repository/common.dart';
import 'state.dart';

/// 同意画面の状態を管理するプロバイダー
final agreementContentStateProvider = AutoDisposeStateNotifierProvider<
    AgreementContentNotifier, AgreementContentState>((ref) {
  return AgreementContentNotifier(
    ref: ref,
    commonRepository: ref.watch(commonRepositoryProvider),
  );
});

class AgreementContentNotifier extends StateNotifier<AgreementContentState> {
  AgreementContentNotifier({
    required this.ref,
    required this.commonRepository,
  }) : super(const AgreementContentState()) {
    _fetchConsentContents();
  }

  final AutoDisposeStateNotifierProviderRef<AgreementContentNotifier,
      AgreementContentState> ref;
  final CommonRepository commonRepository;

  // 規約取得
  Future<void> _fetchConsentContents() async {
    await commonRepository.fetchConsentContents().then(
      (response) {
        if (response.data == null) {
          return;
        }

        final consentList = response.data!;

        if (consentList.list.isNotEmpty) {
          final poricy = consentList.list.whereType<PoricyConsentModel>().first;
          final terms = consentList.list.whereType<TermsConsentModel>().first;
          state = state.copyWith(
            poricyConsent: poricy,
            termsConsent: terms,
          );
        }
      },
    ).catchError((_) {});
  }

  void toggleIsRead() {
    state = state.copyWith(isRead: !state.isRead);
  }
}
