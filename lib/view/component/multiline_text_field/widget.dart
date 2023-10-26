import 'package:flutter/material.dart';

import '../../style/colors.dart';
import '../../style/text_style.dart';

/// 「健診入力のその他」などで使用する複数行のテキストフィールド
class MultilineTextField extends StatelessWidget {
  const MultilineTextField({
    super.key,
    required this.controller,
    this.readOnly = false,
    this.hintText,
    this.maxLines,
    this.minLines,
    this.onChanged,
    this.onFieldSubmitted,
    this.hintStyle,
    this.focusNode,
  });

  final TextEditingController controller;
  final bool readOnly;
  final String? hintText;
  final int? maxLines;
  final int? minLines;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final TextStyle? hintStyle;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly,
      maxLines: maxLines,
      minLines: minLines,
      cursorColor: IHSColors.black800,
      controller: controller,
      focusNode: focusNode,
      style: IHSTextStyle.small,
      textInputAction: TextInputAction.newline,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: IHSColors.black800,
            width: 1.5,
          ),
          borderRadius: BorderRadius.zero,
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: IHSColors.black800,
            width: 1.5,
          ),
          borderRadius: BorderRadius.zero,
        ),
        filled: true,
        fillColor: IHSColors.white,
        hintText: hintText,
        hintStyle: hintStyle,
        alignLabelWithHint: true,
      ),
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
    );
  }
}
