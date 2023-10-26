import 'package:family_notes/data/repository/notice.dart';
import 'package:riverpod/riverpod.dart';

import '../../../data/model/response/model.dart';
import '../../../util/util.dart';
import '../../style/texts.dart';
import 'state.dart';

class InfomationDetailProviderArg {
  InfomationDetailProviderArg({required this.noticeId});

  final int noticeId;
}

final infomationDetailProvider = AutoDisposeStateNotifierProvider<
    InfomationDetailNotifier,
    InfomationDetailState>((ref) => throw UnimplementedError());

final infomationDetailProviderFamily = StateNotifierProvider.family.autoDispose<
    InfomationDetailNotifier,
    InfomationDetailState,
    InfomationDetailProviderArg>((ref, arg) {
  return InfomationDetailNotifier(
    noticeId: arg.noticeId,
    repository: ref.read(noticeRepositoryProvider),
    ref: ref,
  );
});

class InfomationDetailNotifier extends StateNotifier<InfomationDetailState> {
  InfomationDetailNotifier({
    required this.noticeId,
    required this.repository,
    required this.ref,
  }) : super(const InfomationDetailStateLoading()) {
    _init();
  }

  final int noticeId;
  final NoticeRepository repository;
  final AutoDisposeStateNotifierProviderRef ref;

  Future<void> _init() async {
    await repository.noticeDetail(noticeId: noticeId).then(
      (response) {
        final data = response.data;

        if (response.status == ResponseStatus.failure || data == null) {
          _showError(response.msg ?? IHSTexts.error);
          return;
        }

        state = InfomationDetailState.loaded(notice: data);
      },
    ).catchError((_) {});
  }
}

void _showError(String msg) {
  IHSUtil.showSnackBar(msg: msg);
}
