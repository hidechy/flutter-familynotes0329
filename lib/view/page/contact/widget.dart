import 'package:flutter/material.dart';

import '../../../util/launch.dart';
import '../../component/main_layout/widget.dart';
import '../../style/colors.dart';
import '../../style/constants.dart';
import '../../style/text_style.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'お問い合わせ',
      showDrawer: false,
      body: Column(
        children: [
          const SizedBox(height: 48),
          FittedBox(
            child: Text(
              'アプリの利用に関するお問い合わせ\n改善のご要望等を受け付けております。\nお子さまのお身体に関するお悩み、\n健康・育児相談につきましては、\nお答え出来かねますのでご了承ください。',
              textAlign: TextAlign.center,
              style: IHSTextStyle.small,
            ),
          ),
          const SizedBox(height: 32),
          Text(
            'お問い合わせ先：',
            textAlign: TextAlign.center,
            style: IHSTextStyle.small,
          ),
          const SizedBox(height: 24),
          FittedBox(
            child: Text(
              '吹田市 健康医療部 健康まちづくり室',
              textAlign: TextAlign.center,
              style: IHSTextStyle.small,
            ),
          ),
          const SizedBox(height: 16),
          GestureDetector(
            onTap: () => UrlLaunch.launchInBrowser(
              context,
              IHSConstants.contactAddress,
            ),
            child: Text(
              IHSConstants.contactAddress,
              textAlign: TextAlign.center,
              style: IHSTextStyle.small.copyWith(color: IHSColors.pink400),
            ),
          ),
          const SizedBox(height: 32),
          Text(
            '数日以内にお返事いたします。',
            textAlign: TextAlign.center,
            style: IHSTextStyle.small,
          ),
        ],
      ),
    );
  }
}
