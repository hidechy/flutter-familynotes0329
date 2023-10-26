import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../util/page_navigator.dart';
import '../../../style/colors.dart';
import '../../../style/text_style.dart';
import '../../agreement_content/type.dart';
import '../../agreement_content/widget.dart';
import '../notifier.dart';

class AgreementArea extends ConsumerWidget {
  const AgreementArea({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(signUpInputStateProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            _pushToAgreementContent(
              context: context,
              type: AgreementContentType.privacyPolicy,
              ref: ref,
            );
          },
          child: AbsorbPointer(
            child: FittedBox(
              child: Row(
                children: [
                  _CheckBox(
                    value: state.hasCheckedPoricy,
                    onChanged: (value) {},
                  ),
                  Text(
                    'プライバシーポリシー',
                    style: IHSTextStyle.small.copyWith(
                      decoration: TextDecoration.underline,
                      color: IHSColors.pink500,
                      height: 1,
                    ),
                  ),
                  Text(
                    'に同意する。',
                    style: IHSTextStyle.small,
                  ),
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            _pushToAgreementContent(
              context: context,
              type: AgreementContentType.terms,
              ref: ref,
            );
          },
          child: AbsorbPointer(
            child: FittedBox(
              child: Row(
                children: [
                  _CheckBox(
                    value: state.hasCheckedTerms,
                    onChanged: (value) {},
                  ),
                  Text(
                    '利用規約',
                    style: IHSTextStyle.small.copyWith(
                      decoration: TextDecoration.underline,
                      color: IHSColors.pink500,
                      height: 1,
                    ),
                  ),
                  Text(
                    'に同意する。',
                    style: IHSTextStyle.small,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  // プライバシーポリシー・利用規約
  Future<void> _pushToAgreementContent({
    required BuildContext context,
    required AgreementContentType type,
    required WidgetRef ref,
  }) async {
    await PageNavigator.navigatePage(
        context,
        AgreementContentPage(
          showConsentButton: true,
          type: type,
          onTapedAgree: (model) {
            ref.read(signUpInputStateProvider.notifier).onChecked(
                  active: true,
                  model: model,
                );
          },
        ));
  }
}

class _CheckBox extends StatelessWidget {
  const _CheckBox({
    required this.value,
    required this.onChanged,
  });

  final bool value;
  final Function(bool?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.2,
      child: Checkbox(
        activeColor: IHSColors.black800,
        fillColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.selected)) {
              return IHSColors.pink400;
            } else if (states.contains(MaterialState.disabled)) {
              return IHSColors.black800;
            }
            return IHSColors.black800;
          },
        ),
        value: value,
        onChanged: onChanged,
      ),
    );
  }
}
