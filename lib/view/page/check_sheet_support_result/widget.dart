import 'package:family_notes/gen/assets.gen.dart';
import 'package:family_notes/util/launch.dart';
import 'package:family_notes/view/component/gradation_layout/widget.dart';
import 'package:family_notes/view/component/ihs_button/type.dart';
import 'package:family_notes/view/component/ihs_button/widget.dart';
import 'package:family_notes/view/style/colors.dart';
import 'package:family_notes/view/style/text_style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../util/util.dart';
import '../../component/home_button/widget.dart';

/// サポートチェックシート入力結果画面
class CheckSheetSupportResultPage extends ConsumerWidget {
  const CheckSheetSupportResultPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const linkUrl =
        'https://www.city.suita.osaka.jp/kosodate/1018257/1018270/1005886.html';
    final scrollController = ScrollController();

    return GradationLayout(
      title: 'サポートチェック',
      headerPressed: IHSUtil.getScrollTopFunction(scrollController),
      showDrawer: false,
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            const SizedBox(height: 16),
            Text(
              'すいすいシートとは、お子さまの情報を整理し、学校・保育園などお子さまと関わる人たちと、サポート内容を共有するためのものです。\nすいすいシートの記入に際して、サポートチェックで整理された内容を参考にしてみてください。',
              style: IHSTextStyle.small,
            ),
            const SizedBox(height: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Transform.scale(
                        scale: 1.5,
                        child: SvgPicture.asset(Assets.images.iconCaretDown),
                      ),
                    ),
                    Text(
                      'すいすいシート',
                      style: IHSTextStyle.small.copyWith(
                        color: IHSColors.pink400,
                      ),
                    ),
                  ],
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        style: IHSTextStyle.small.copyWith(
                          color: IHSColors.pink400,
                        ),
                        text: linkUrl,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            await UrlLaunch.launchInBrowser(context, linkUrl);
                          },
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            const SizedBox(height: 24),
            IHSButton(
              '入力内容を見る',
              type: IHSButtonType.primary,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 24),
            const HomeButton(),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
