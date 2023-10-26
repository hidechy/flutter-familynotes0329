import 'package:family_notes/data/request/notice_list/request.dart';
import 'package:family_notes/view/style/texts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod/riverpod.dart';

import '../../../data/model/response/model.dart';
import '../../../data/repository/notice.dart';
import '../../../util/util.dart';
import 'state.dart';

final infomationSelectProvider = AutoDisposeStateNotifierProvider<
    InfomationSelectNotifier, InfomationSelectState>(
  (ref) {
    final repository = ref.read(noticeRepositoryProvider);
    return InfomationSelectNotifier(
      repository: repository,
      ref: ref,
    );
  },
);

class InfomationSelectNotifier extends StateNotifier<InfomationSelectState> {
  InfomationSelectNotifier({
    required this.repository,
    required this.ref,
  }) : super(const InfomationSelectState()) {
    _init();
  }

  final NoticeRepository repository;
  final AutoDisposeStateNotifierProviderRef ref;
  // １回のAPI送信で取得する記事の数
  final int noticesPerFetch = 20;

  Future<void> _init() async {
    // カテゴリー一覧を取得
    await fetchCategoryList();

    // カテゴリーを絞らないでお知らせ一覧を取得
    await fetchNotices();
  }

  // カテゴリー一覧を取得する
  Future<void> fetchCategoryList() async {
    await repository.noticeCategories().then(
      (response) {
        final data = response.data;

        if (response.status == ResponseStatus.failure || data == null) {
          _showError(response.msg ?? IHSTexts.error);
          return;
        }

        final list = data.list;
        state = state.copyWith(categories: list);
      },
    ).catchError((_) {});
  }

  // お知らせ一覧を取得する（最初の20件）
  Future<void> fetchNotices({
    int? categoryId,
    int page = 1,
  }) async {
    final request = NoticeListRequest(
      categoryId: categoryId,
      page: page,
    );

    await repository.noticeList(request: request).then(
      (response) {
        final data = response.data;

        if (response.status == ResponseStatus.failure || data == null) {
          _showError(response.msg ?? IHSTexts.error);
          return;
        }

        final noticeList = data.list;

        state = state.copyWith(
          notices: page == 1 ? noticeList : [...state.notices, ...noticeList],
          page: page,
          hasOldNotices: noticeList.length == noticesPerFetch,
        );
      },
    ).catchError((error, _) {});
  }

  // 表示しているお知らせ一覧の下限を検知したときに追加の記事を取得する
  Future<void> fetchMoreNotices() async {
    await fetchNotices(
      categoryId: state.selectedCategoryId,
      page: state.page + 1,
    );
  }

  // カテゴリーのタブをタップした時にお知らせ一覧を取得する
  Future<void> selectCategory(int categoryId) async {
    if (state.selectedCategoryId == categoryId) {
      state = state.copyWith(
        selectedCategoryId: null,
        hasOldNotices: true,
      );
      await fetchNotices();
      return;
    }
    state = state.copyWith(
      selectedCategoryId: categoryId,
      hasOldNotices: true,
    );
    await fetchNotices(
      categoryId: categoryId,
    );
  }
}

void _showError(String msg) {
  IHSUtil.showSnackBar(msg: msg);
}
