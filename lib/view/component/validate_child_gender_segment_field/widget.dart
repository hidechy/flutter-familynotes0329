import 'package:family_notes/view/component/validate_text_field/child_gedner_type.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../type/gender.dart';
import '../../style/colors.dart';
import '../../style/text_style.dart';

/// 子供の性別を選択するコンポーネント
class ValidateChildGenderSegmentField extends ReactiveFormField {
  ValidateChildGenderSegmentField({
    super.key,
    required bool isOnPressed,
    required FormControl<Gender?> control,
    required Function(Gender value) onTap,
  }) : super(
          formControl: control,
          builder: (state) {
            final isValidate = isOnPressed && state.control.invalid;
            String Function(Object)? validateMessage = (_) {
              return '';
            };
            final value = state.control.value == null
                ? null
                : state.control.value as Gender;
            final errors = state.control.errors;
            if (errors.isNotEmpty) {
              final key = state.control.errors.keys.toList().first;
              validateMessage = ValidateChildGenderType.validationMessage[key];
            }

            return Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: _SegmentButton(
                        type: Gender.man,
                        selected: Gender.man == value,
                        isValidate: isValidate,
                        onPressed: () {
                          state.didChange(Gender.man);
                          onTap(Gender.man);
                        },
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: _SegmentButton(
                        type: Gender.woman,
                        selected: Gender.woman == value,
                        isValidate: isValidate,
                        onPressed: () {
                          state.didChange(Gender.woman);
                          onTap(Gender.woman);
                        },
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: _SegmentButton(
                        type: Gender.unknown,
                        selected: Gender.unknown == value,
                        isValidate: isValidate,
                        onPressed: () {
                          state.didChange(Gender.unknown);
                          onTap(Gender.unknown);
                        },
                      ),
                    ),
                  ],
                ),
                // 登録等のボタン押下時に、state.didChange()を発火させる契機がなく
                // バリデーションメッセージが表示がされないので、ボタン押下したかのboolを用いている
                isValidate
                    ? Container(
                        margin: const EdgeInsets.only(top: 8, left: 16),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            validateMessage!.call(''),
                            style: IHSTextStyle.xSmall.copyWith(
                              color: IHSColors.red,
                              height: 1.2,
                            ),
                          ),
                        ),
                      )
                    : const SizedBox.shrink()
              ],
            );
          },
        );
}

class _SegmentButton extends StatelessWidget {
  const _SegmentButton({
    required this.type,
    required this.selected,
    required this.isValidate,
    required this.onPressed,
  });

  final Gender type;
  final bool selected;
  final bool isValidate;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: selected ? IHSColors.pink200 : IHSColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          disabledBackgroundColor: IHSColors.pink200,
          side: isValidate
              ? const BorderSide(color: IHSColors.red, width: 1.5)
              : BorderSide(
                  color: selected ? IHSColors.pink300 : IHSColors.black400,
                  width: 2,
                ),
        ),
        onPressed: onPressed,
        child: Text(
          type.childLabel,
          style: IHSTextStyle.small,
        ),
      ),
    );
  }
}
