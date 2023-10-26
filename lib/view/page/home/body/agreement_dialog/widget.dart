import 'package:family_notes/data/model/consent/model.dart';
import 'package:flutter/material.dart';

import '../../../../component/ihs_button/type.dart';
import '../../../../component/ihs_button/widget.dart';
import '../../../../style/colors.dart';
import '../../../../style/text_style.dart';
import '../../../agreement_content/type.dart';
import '../../../agreement_content/widget.dart';

/// 同意内容更新確認ダイアログ
class AgreementDialog extends StatelessWidget {
  const AgreementDialog({
    super.key,
    required this.label,
    required this.type,
    required this.onTap,
  });

  final String label;
  final AgreementContentType type;
  final Function(ConsentModel consentModel) onTap;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return AlertDialog(
      contentPadding: const EdgeInsets.all(24),
      insetPadding: const EdgeInsets.all(24),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      content: SizedBox(
        height: size.height * 0.25,
        width: size.width,
        child: Navigator(
          onGenerateRoute: (_) {
            return MaterialPageRoute(
              builder: (context) => Scaffold(
                backgroundColor: IHSColors.white,
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '$labelが\n更新されました。\n再度ご確認をお願いします。',
                        style: IHSTextStyle.small,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 24),
                      IHSButton(
                        '確認画面へ',
                        type: IHSButtonType.primary,
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return AgreementContentPage(
                                  showConsentButton: true,
                                  showLeading: false,
                                  type: type,
                                  onTapedAgree: onTap,
                                );
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
