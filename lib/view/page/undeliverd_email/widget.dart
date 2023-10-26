import 'package:flutter/material.dart';

import '../../../util/launch.dart';
import '../../component/main_layout/widget.dart';
import '../../style/colors.dart';
import '../../style/constants.dart';
import '../../style/text_style.dart';

/// 「メールが届かない場合」画面
class UndeliverdEmailPage extends StatelessWidget {
  const UndeliverdEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final explanationContents = [
      'ご入力いただいたメールアドレスに誤りがある',
      '迷惑メールフォルダに振り分けられてしまっている',
      '迷惑メール設定（ドメイン指定やURL付きメールの受信拒否等）がされている',
      'au、softbank、docomo等のキャリアメールで登録されている',
    ];

    return MainLayout(
      title: 'メールが届かない場合',
      showDrawer: false,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Text(
              '確認コードのお知らせメールが届かない場合は、下記についてご確認ください。',
              style: IHSTextStyle.medium.copyWith(color: IHSColors.pink500),
            ),
            const SizedBox(height: 32),
            for (var i = 0; i < explanationContents.length; i++) ...[
              explanationComponent(
                number: i + 1,
                explanation: explanationContents[i],
              ),
              const SizedBox(height: 24),
            ],
            const SizedBox(height: 8),
            Text(
              '大変お手数ですが、迷惑メール設定をご利用の場合は一度すべて解除していただくか、ほかのメールアドレス（Gmail等）にてお試しいただけますようお願いいたします。',
              style: IHSTextStyle.small,
            ),
            const SizedBox(height: 48),
            Container(
              alignment: Alignment.center,
              child: DefaultTextStyle(
                style: IHSTextStyle.medium.copyWith(color: IHSColors.pink500),
                child: Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('解決しない場合は'),
                        GestureDetector(
                          onTap: () => UrlLaunch.launchInBrowser(
                            context,
                            IHSConstants.contactAddress,
                          ),
                          child: const Text(
                            'こちら',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Text('（お問い合わせ窓口）'),
                    const SizedBox(height: 48),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget explanationComponent(
      {required int number, required String explanation}) {
    return DefaultTextStyle(
      style: IHSTextStyle.small,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('($number)'),
          Expanded(child: Text(explanation)),
        ],
      ),
    );
  }
}
