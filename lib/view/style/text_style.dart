import 'package:flutter/material.dart';

import '../../gen/fonts.gen.dart';
import 'colors.dart';

class IHSTextStyle {
  IHSTextStyle._();

  // root定義
  static TextStyle get _root => const TextStyle(
        fontFamily: FontFamily.mPLUSRounded,
        color: IHSColors.black800,
      );

  static TextStyle get xxSmall => const TextStyle(fontSize: 8, height: 16 / 12).merge(_root);

  static TextStyle get xSmall => const TextStyle(fontSize: 12, height: 20 / 12).merge(_root);

  static TextStyle get small => const TextStyle(fontSize: 16, height: 24 / 16).merge(_root);

  static TextStyle get medium => const TextStyle(fontSize: 20, height: 28 / 20).merge(_root);

  static TextStyle get large => const TextStyle(fontSize: 24, height: 32 / 24).merge(_root);
}
