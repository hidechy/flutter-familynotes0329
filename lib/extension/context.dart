import 'package:flutter/material.dart';

import '../view/style/constants.dart';

extension ContextEx on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;
  double get screenWidth => screenSize.width;
  double get screenHeight => screenSize.height;

  /// [デバイスの高さ]と[基準となるデバイスの高さ]から、高さの係数を算出
  double getDeviceHeightFactor({
    double baseDeviceHeight = IHSConstants.maxIphoneDeviceHeight,
  }) {
    final heightFactor = screenHeight / baseDeviceHeight;
    return heightFactor >= 1 ? 1 : heightFactor;
  }
}
