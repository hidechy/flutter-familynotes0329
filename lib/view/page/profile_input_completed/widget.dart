import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/view/component/main_layout/widget.dart';
import '/view/page/baby_input/widget.dart';
import '../../../util/page_navigator.dart';
import '../../component/ihs_button/type.dart';
import '../../component/ihs_button/widget.dart';
import '../../style/text_style.dart';
import '../child_input/widget.dart';

/// プロフィール入力完了画面
class ProfileInputCompletedPage extends ConsumerWidget {
  const ProfileInputCompletedPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MainLayout(
      title: 'プロフィール情報',
      showDrawer: false,
      body: Column(
        children: [
          const SizedBox(height: 16),
          Text(
            '次にお子さまを登録してください。\n双子、3つ子以上の場合、まずは最初のおひとりを登録してください。',
            textAlign: TextAlign.left,
            style: IHSTextStyle.small,
          ),
          const SizedBox(height: 40),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IHSButton(
                '胎児の情報を新規登録',
                type: IHSButtonType.primary,
                onPressed: () {
                  PageNavigator.navigatePage(context, const BabyInputPage());
                },
              ),
              const SizedBox(height: 24),
              IHSButton(
                'お子さまの情報を新規登録',
                type: IHSButtonType.primary,
                onPressed: () {
                  PageNavigator.navigatePage(context, const ChildInputPage());
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
