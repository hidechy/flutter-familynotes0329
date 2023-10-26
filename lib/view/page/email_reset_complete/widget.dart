import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../component/ihs_button/type.dart';
import '../../component/ihs_button/widget.dart';
import '../../component/main_layout/widget.dart';
import '../../style/colors.dart';
import '../../style/text_style.dart';
import '../profile_info/notifier.dart';

/// メアド変更完了画面
class EmailResetCompletedPage extends ConsumerWidget {
  const EmailResetCompletedPage({
    super.key,
    required this.email,
  });

  final String email;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MainLayout(
      title: 'メールアドレス変更',
      showDrawer: false,
      automaticallyImplyLeading: false,
      body: Column(
        children: [
          const SizedBox(height: 11),
          FittedBox(
            child: Text(
              'メールアドレスが変更されました。',
              style: IHSTextStyle.medium,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 32),
          Text(
            email,
            style: IHSTextStyle.medium.copyWith(
              color: IHSColors.pink500,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          IHSButton(
            'プロフィールへ',
            type: IHSButtonType.primary,
            onPressed: () {
              ref.watch(profileInfoStateProvider.notifier).fetchProfile();

              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
