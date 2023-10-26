import 'package:family_notes/view/page/check_sheet_growth/widget.dart';
import 'package:family_notes/view/page/check_sheet_support/widget.dart';
import 'package:family_notes/view/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../util/page_navigator.dart';
import '../../../util/util.dart';
import '../../component/gradation_layout/widget.dart';
import '../../component/ihs_button/type.dart';
import '../../component/ihs_button/widget.dart';

/// チェックシート選択画面
class CheckSheetSelectPage extends ConsumerWidget {
  const CheckSheetSelectPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = ScrollController();

    return GradationLayout(
      title: '成長チェック',
      headerPressed: IHSUtil.getScrollTopFunction(scrollController),
      showDrawer: false,
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            const SizedBox(height: 16),
            Text(
              'お子さまの成長のめやすチェックにご活用ください。月齢に応じたチェック項目が表示されます。（何回でも修正登録が可能です。）',
              style: IHSTextStyle.small,
            ),
            const SizedBox(height: 32),
            IHSButton(
              '発達チェック',
              type: IHSButtonType.primary,
              onPressed: () {
                PageNavigator.navigatePage(
                    context, const CheckSheetGrowthPage());
              },
            ),
            const SizedBox(height: 32),
            Text(
              'お子さまの得意・不得意や、ご様子を記録できます。お子さまのご様子を相談機関や学校園に伝える際にも、ご活用ください。（何回でも修正登録が可能です。）',
              style: IHSTextStyle.small,
            ),
            const SizedBox(height: 32),
            IHSButton(
              'サポートチェック',
              type: IHSButtonType.primary,
              onPressed: () {
                PageNavigator.navigatePage(
                    context, const CheckSheetSupportPage());
              },
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
