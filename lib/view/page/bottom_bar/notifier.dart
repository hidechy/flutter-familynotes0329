import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/repository/common.dart';
import '../../../data/repository/notice.dart';
import 'state.dart';
import 'type.dart';

@immutable
class BottomBarState {
  const BottomBarState({required this.tabIndex});

  final int tabIndex;
}
int? globalTabIndex;

final bottomBarStateProvider =
    StateNotifierProvider<BottomBarStateNotifier, BottomBarState>((ref) {
  return BottomBarStateNotifier(
    ref: ref,
    commonRepository: ref.watch(commonRepositoryProvider),
  );
});

class BottomBarStateNotifier extends StateNotifier<BottomBarState> {
  BottomBarStateNotifier({
    required this.ref,
    required this.commonRepository,
  }) : super(const BottomBarState(tabIndex: 0));

  final Ref ref;
  final CommonRepository commonRepository;

  void setTabIndex(int index) {
    state = BottomBarState(tabIndex: index);
  }

  /// FcmToken登録
  Future<void> addFcmToken(String fcmToken) async {
    await commonRepository.addFcmToken(fcmToken: fcmToken).catchError((_) {});
  }
}

/// お知らせ新着を管理するプロバイダー
final readConfirmationStateProvider = AutoDisposeStateNotifierProvider<
    NoticeReadConfirmationNotifier, NoticeReadConfirmationState>((ref) {
  return NoticeReadConfirmationNotifier(
    ref: ref,
    repository: ref.read(noticeRepositoryProvider),
  )..fetchNoticeReadConfirmation();
});

class NoticeReadConfirmationNotifier
    extends StateNotifier<NoticeReadConfirmationState> {
  NoticeReadConfirmationNotifier({required this.ref, required this.repository})
      : super(
          NoticeReadConfirmationState(
            isArrival: ReadConfirmation.alreadyRead.num,
          ),
        );

  AutoDisposeStateNotifierProviderRef<NoticeReadConfirmationNotifier,
      NoticeReadConfirmationState> ref;
  final NoticeRepository repository;

  // お知らせ新着取得
  Future<void> fetchNoticeReadConfirmation() async {
    await repository.noticeReadConfirmation().then(
      (response) {
        state = state.copyWith(fetching: false);

        if (response.data == null) {
          return;
        }

        final noticeReadConfirmation = response.data!;

        state = state.copyWith(isArrival: noticeReadConfirmation.isArrival);
      },
    ).catchError((_) {});
  }
}
