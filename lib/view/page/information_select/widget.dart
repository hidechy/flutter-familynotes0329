import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../data/model/notice_list/model.dart';
import '../../../extension/date_time.dart';
import '../../../provider/app/notifier.dart';
import '../../../util/page_navigator.dart';
import '../../../util/util.dart';
import '../../component/gradation_layout/widget.dart';
import '../../style/colors.dart';
import '../../style/text_style.dart';
import '../bottom_bar/notifier.dart';
import '../information_detail/widget.dart';
import 'category_tags/widget.dart';
import 'notifier.dart';

/// お知らせ一覧
class InformationSelectPage extends ConsumerStatefulWidget {
  const InformationSelectPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _InformationSelectPageState();
}

class _InformationSelectPageState extends ConsumerState<InformationSelectPage> {
  late final ScrollController scrollController;
  late final RefreshController _refreshController;

  @override
  void initState() {
    scrollController = ScrollController();
    _refreshController = RefreshController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(infomationSelectProvider);
    final notifier = ref.read(infomationSelectProvider.notifier);

    return GradationLayout(
      title: 'お知らせ',
      automaticallyImplyLeading: false,
      headerPressed: IHSUtil.getScrollTopFunction(scrollController),
      horizontalPadding: 0,
      reload: () {
        ref.refresh(infomationSelectProvider);
      },
      body: Column(
        children: [
          const SizedBox(height: 16),
          const CategoryTags(),
          const SizedBox(height: 36),
          Expanded(
            child: NotificationListener<ScrollNotification>(
              onNotification: (scrollNotification) {
                Future.microtask(() async {
                  if (scrollNotification is OverscrollNotification) {
                    // リストの下限をさらに下にスクロールした時
                    if (scrollNotification.overscroll > 10 &&
                        state.hasOldNotices) {
                      await notifier.fetchMoreNotices();
                    }
                  }
                });

                return true;
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 4),
                child: Scrollbar(
                  controller: scrollController,
                  child: SmartRefresher(
                    header: CustomHeader(
                        builder: (BuildContext context, RefreshStatus? mode) {
                      Widget? body;
                      if (mode == RefreshStatus.refreshing ||
                          mode == RefreshStatus.completed ||
                          mode == RefreshStatus.canRefresh) {
                        body = const CupertinoActivityIndicator(
                          radius: 16,
                        );
                      } else if (mode == RefreshStatus.idle) {
                        body = const Icon(
                          Icons.arrow_downward_sharp,
                        );
                      }
                      return SizedBox(
                        height: 55,
                        child: Center(child: body),
                      );
                    }),
                    controller: _refreshController,
                    onRefresh: () async {
                      ref.read(appStateProvider.notifier).unShowIndicator();
                      await notifier.fetchNotices(
                        categoryId: state.selectedCategoryId,
                      );
                      _refreshController.refreshCompleted();
                      ref.read(appStateProvider.notifier).showIndicator();
                    },
                    child: ListView.builder(
                      padding: const EdgeInsets.only(bottom: 16),
                      shrinkWrap: true,
                      itemCount: state.notices.length,
                      physics: const ClampingScrollPhysics(),
                      controller: scrollController,
                      itemBuilder: (context, index) {
                        final _notice = state.notices[index];
                        return NoticeTile(
                          key: Key(_notice.noticeReadId.toString()),
                          notice: state.notices[index],
                          onTap: () async {
                            await _toDetailPage(
                              context,
                              id: state.notices[index].noticeReadId,
                            );

                            // ボトムバーのバッジ色変更のためにお知らせ確認を再取得する
                            // 未読がある場合はピンク、ない場合は灰色に変わる
                            await ref
                                .watch(
                                  readConfirmationStateProvider.notifier,
                                )
                                .fetchNoticeReadConfirmation();
                          },
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

class NoticeTile extends StatelessWidget {
  const NoticeTile({
    super.key,
    required this.notice,
    required this.onTap,
  });

  final NoticeListItemModel notice;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final isRead = notice.readAt != null;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        color: IHSColors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Row(
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      if (!isRead) ...[
                        const NewMark(),
                        const SizedBox(width: 8),
                      ],
                      Text(
                        notice.deliveryAt.yyyymmdd,
                        style: IHSTextStyle.xSmall.copyWith(
                          color: IHSColors.black400,
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    notice.title,
                    style: IHSTextStyle.small,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            const Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}

class NewMark extends StatelessWidget {
  const NewMark({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: IHSColors.pink400,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        'NEW',
        style: IHSTextStyle.xxSmall.copyWith(
          color: IHSColors.white,
        ),
      ),
    );
  }
}

Future<void> _toDetailPage(
  BuildContext context, {
  required int id,
}) async {
  await PageNavigator.navigatePage(
    context,
    InformationDetailPage(noticeId: id),
  );
}
