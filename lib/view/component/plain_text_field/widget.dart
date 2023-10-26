import 'package:flutter/material.dart';

import '../../style/colors.dart';
import '../../style/text_style.dart';

/// プロフィール登録などで使用するテキストフィールドコンポーネント
class PlainTextField extends StatelessWidget {
  const PlainTextField({
    super.key,
    required this.controller,
    this.title,
    this.hintText,
    this.width,
    this.isRequired = false,
    this.inputType = TextInputType.text,
    this.inputAction = TextInputAction.next,
    this.align = TextAlign.left,
    this.onChanged,
    this.onSubmitted,
  });

  final TextEditingController controller;

  // フィールドの上に表示するタイトル
  final String? title;
  final String? hintText;

  // フィールドの上に必須を表示する
  final bool isRequired;
  final double? width;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final TextAlign align;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title != null
            ? Column(
                children: [
                  FittedBox(
                    child: Row(
                      children: [
                        Text(
                          title!,
                          style: IHSTextStyle.small.copyWith(
                            height: 1,
                          ),
                        ),
                        if (isRequired) ...[
                          const SizedBox(width: 8),
                          Text(
                            '必須',
                            style: IHSTextStyle.xSmall.copyWith(
                              color: const Color(0xffFE0000),
                              height: 1,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              )
            : const SizedBox.shrink(),
        Container(
          color: IHSColors.white,
          height: 48,
          width: width,
          child: TextField(
            controller: controller,
            keyboardType: inputType,
            textInputAction: inputAction,
            cursorColor: IHSColors.black800.withOpacity(0.8),
            style: IHSTextStyle.small,
            textAlign: align,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: IHSTextStyle.small.copyWith(
                color: IHSColors.black200,
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              labelStyle: IHSTextStyle.small.copyWith(
                height: 1,
                textBaseline: TextBaseline.ideographic,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: IHSColors.black800.withOpacity(0.8),
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: IHSColors.black800.withOpacity(0.8),
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onChanged: onChanged,
            onSubmitted: onSubmitted,
          ),
        ),
      ],
    );
  }
}
