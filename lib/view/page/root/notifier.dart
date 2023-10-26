import 'package:family_notes/data/request/consent/request.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/data/model/consent/model.dart';
import '/data/repository/common.dart';
import 'state.dart';

final rootStateProvider =
    StateNotifierProvider<RootStateNotifier, RootState>((ref) {
  return RootStateNotifier(
    ref: ref,
    commonRepository: ref.watch(commonRepositoryProvider),
  );
});

class RootStateNotifier extends StateNotifier<RootState> {
  RootStateNotifier({
    required this.ref,
    required this.commonRepository,
  }) : super(const RootState());

  final StateNotifierProviderRef ref;
  final CommonRepository commonRepository;

  /// ユーザー同意内容取得
  Future<ConsentListModel?> fetchUserConsenctContents() async {
    return commonRepository.fetchUserConsentContents().then(
      (model) {
        return model.data;
      },
    ).catchError(
      (_) {},
    );
  }

  Future<void> onAgreedContent(ConsentModel content) async {
    final request = ConsentContentsConsentRequest(
      type: content.type,
      consentId: content.id,
    );
    await commonRepository.updateConsentContents(request: request).then(
      (model) {
        return model.data;
      },
    ).catchError(
      (_) {},
    );
  }
}
