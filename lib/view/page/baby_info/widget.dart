import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/extension/date_time.dart';
import '/extension/string.dart';
import '/provider/child/notifier.dart';
import '/provider/child/state.dart';
import '/view/component/ihs_button/type.dart';
import '/view/component/ihs_button/widget.dart';
import '/view/style/text_style.dart';
import '../../../gen/assets.gen.dart';
import '../../../util/page_navigator.dart';
import '../../../util/util.dart';
import '../../component/gradation_layout/widget.dart';
import '../../component/loading_indicator/widget.dart';
import '../../style/colors.dart';
import '../baby_birth_count/widget.dart';

class BabyInfoPage extends ConsumerWidget {
  const BabyInfoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedChildState = ref.watch(selectedChildStateProvider);
    final scrollController = ScrollController();

    return selectedChildState.map(
      init: (value) => const SizedBox(),
      loading: (_) => const SizedBox(),
      loaded: (loadedState) {
        if (loadedState.child is ChildIHSChild) {
          // 子どもを選択していたらこの画面を開けないのでここは通らない想定
          return const LoadingIndicator();
        }
        final baby = (loadedState.child as BabyIHSChild).data;
        return GradationLayout(
          title: '胎児情報',
          headerPressed: IHSUtil.getScrollTopFunction(scrollController),
          showDrawer: false,
          horizontalPadding: 40,
          body: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                const SizedBox(height: 16),
                Row(
                  children: [
                    SvgPicture.asset(
                      Assets.images.iconBaby,
                      width: 64,
                      height: 64,
                    ),
                    const SizedBox(width: 24),
                    Flexible(
                      child: Text(
                        baby.nickname,
                        maxLines: 2,
                        softWrap: false,
                        overflow: TextOverflow.ellipsis,
                        style: IHSTextStyle.large,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                Row(
                  children: [
                    Text(
                      '胎児情報',
                      style: IHSTextStyle.medium.copyWith(
                        color: IHSColors.pink500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Text(
                      '出産予定日',
                      style: IHSTextStyle.medium,
                    ),
                    const SizedBox(width: 24),
                    Text(
                      baby.birthScheduleDate
                          .toDateTime(DateFormatType.yyyymmddhhmmss)
                          .yyyymmdd,
                      style: IHSTextStyle.medium,
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                IHSButton(
                  '出産情報を入力',
                  type: IHSButtonType.primary,
                  onPressed: () {
                    PageNavigator.navigatePage(
                        context, const BabyBirthCountPage());
                  },
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        );
      },
    );
  }
}
