import 'package:family_notes/view/component/gradation_layout/widget.dart';
import 'package:family_notes/view/component/ihs_button/type.dart';
import 'package:family_notes/view/component/ihs_button/widget.dart';
import 'package:family_notes/view/page/check_sheet_growth_result/notifier.dart';
import 'package:family_notes/view/page/check_sheet_growth_result/type.dart';
import 'package:family_notes/view/page/check_sheet_support/widget.dart';
import 'package:family_notes/view/style/colors.dart';
import 'package:family_notes/view/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../util/page_navigator.dart';
import '../../../util/util.dart';
import '../../component/home_button/widget.dart';

/// 発達チェックシート入力結果画面
class CheckSheetGrowthResultPage extends ConsumerWidget {
  const CheckSheetGrowthResultPage({
    super.key,
    required this.answerResult,
  });

  final int answerResult;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(checkSheetGrowthResultProvider(answerResult));
    final scrollController = ScrollController();

    return GradationLayout(
      title: '発達チェック',
      headerPressed: IHSUtil.getScrollTopFunction(scrollController),
      showDrawer: false,
      reload: () {
        ref.refresh(checkSheetGrowthResultProvider(answerResult));
      },
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: SingleChildScrollView(
          controller: scrollController,
          child: _buildAnswerResultArea(state.resultType),
        ),
      ),
    );
  }

  Widget _buildAnswerResultArea(GrowthQuestionAnswerResultType type) {
    switch (type) {
      case GrowthQuestionAnswerResultType.maternalAndChildProtectionDivision:
        return const _MaternalAndChildProtectionDivisionArea();
      case GrowthQuestionAnswerResultType.communitySupportCenter:
        return const _CommunitySupportCenterArea();
      case GrowthQuestionAnswerResultType.none:
        return const _NoneArea();
    }
  }
}

class _MaternalAndChildProtectionDivisionArea extends StatelessWidget {
  const _MaternalAndChildProtectionDivisionArea();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'サポートチェックでは、さらに、お子さまのご様子を整理、記録することができます。\nご活用ください。',
          style: IHSTextStyle.small,
        ),
        const SizedBox(height: 40),
        const _SupportPagePushButton(),
        const SizedBox(height: 40),
        const HomeButton(),
      ],
    );
  }
}

class _CommunitySupportCenterArea extends StatelessWidget {
  const _CommunitySupportCenterArea();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'お子さまの発達や行動に関して、ご心配なことがありましたら、地域支援センターまでご相談ください。',
          style: IHSTextStyle.small,
        ),
        const SizedBox(height: 24),
        Text(
          'おひさま相談',
          style: IHSTextStyle.small.copyWith(color: IHSColors.pink400),
        ),
        const SizedBox(height: 8),
        Text(
          '5歳〜就学まで',
          style: IHSTextStyle.small,
        ),
        const SizedBox(height: 24),
        Text(
          '外来相談',
          style: IHSTextStyle.small.copyWith(color: IHSColors.pink400),
        ),
        const SizedBox(height: 8),
        Text(
          '小学1年〜18歳まで',
          style: IHSTextStyle.small,
        ),
        const SizedBox(height: 24),
        Text(
          'また、お子さまの様子を整理し、相談機関等に伝えるためにサポートチェックを活用してみましょう。',
          style: IHSTextStyle.small,
        ),
        const SizedBox(height: 40),
        const Center(child: _SupportPagePushButton()),
        const SizedBox(height: 40),
        const Center(child: HomeButton()),
      ],
    );
  }
}

class _NoneArea extends StatelessWidget {
  const _NoneArea();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '健やかに成長されています。',
          style: IHSTextStyle.small,
        ),
        const SizedBox(height: 24),
        const Center(child: HomeButton()),
      ],
    );
  }
}

class _SupportPagePushButton extends StatelessWidget {
  const _SupportPagePushButton();

  @override
  Widget build(BuildContext context) {
    return IHSButton(
      'サポートチェックをやってみる',
      type: IHSButtonType.primary,
      onPressed: () {
        PageNavigator.navigatePage(context, const CheckSheetSupportPage());
      },
    );
  }
}
