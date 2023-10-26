import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../extension/date_time.dart';
import '../../../extension/text.dart';
import '../../../util/util.dart';
import '../../component/gradation_layout/widget.dart';
import '../../style/colors.dart';
import '../../style/text_style.dart';
import '../information_select/notifier.dart';
import 'notifier.dart';
import 'state.dart';

/// お知らせ詳細画面
class InformationDetailPage extends ConsumerWidget {
  const InformationDetailPage({
    super.key,
    required this.noticeId,
  });

  final int noticeId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ProviderScope(
      overrides: [
        infomationDetailProvider.overrideWithProvider(
          infomationDetailProviderFamily(
            InfomationDetailProviderArg(noticeId: noticeId),
          ),
        ),
      ],
      child: const InformationDetailPageBody(),
    );
  }
}

class InformationDetailPageBody extends ConsumerWidget {
  const InformationDetailPageBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(infomationDetailProvider);
    final scrollController = ScrollController();

    Future<void> updateNoticeList() async {
      final state = ref.watch(infomationSelectProvider);
      await ref
          .read(infomationSelectProvider.notifier)
          .fetchNotices(categoryId: state.selectedCategoryId);
    }

    return WillPopScope(
      onWillPop: () async {
        // リスト画面に戻る時にお知らせリストを更新する
        await updateNoticeList();
        return true;
      },
      child: GradationLayout(
        title: 'お知らせ',
        headerPressed: IHSUtil.getScrollTopFunction(scrollController),
        showDrawer: false,
        horizontalPadding: 0,
        reload: () {
          ref.refresh(infomationDetailProvider);
        },
        voidWithPop: () async {
          await updateNoticeList();
          Navigator.of(context).pop();
        },
        body: state.map(
          loading: (_) => const SizedBox(),
          loaded: (InfomationDetailStateLoaded state) {
            final _notice = state.notice!;

            return SingleChildScrollView(
              controller: scrollController,
              child: Container(
                color: IHSColors.white,
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _notice.deliveryAt.yyyymmddhhmm,
                      style: IHSTextStyle.xSmall.copyWith(
                        color: IHSColors.black400,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      _notice.title,
                      style: IHSTextStyle.medium,
                    ),
                    const SizedBox(height: 24),
                    Text(_notice.content).convertUrlToLink(
                      context,
                      textStyle: IHSTextStyle.small,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
