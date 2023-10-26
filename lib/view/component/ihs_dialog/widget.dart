import 'package:flutter/material.dart';

import '../../style/text_style.dart';
import '../ihs_button/type.dart';
import '../ihs_button/widget.dart';

/// アラートダイアログ
///   ボタン一つ -> ピンク色のボタンで固定
///   ボタン二つ -> キャンセルボタンは右の配置で固定だが、色は異なる場合がある
class IHSDialog {
  IHSDialog({
    required this.context,
    required this.title,
    required this.okStr,
    this.cancelStr,
    this.textAlign = TextAlign.center,
    this.okButtonType = IHSButtonType.primary,
    this.cancelButtonType = IHSButtonType.gray,
    this.onTap,
    this.okHorizontalPadding,
    this.cancelHorizontalPadding,
    this.cancelAble,
  });

  final BuildContext context;
  final String title;
  final String okStr;

  // nullならボタン自体非表示
  final String? cancelStr;
  final TextAlign textAlign;
  final IHSButtonType okButtonType;
  final IHSButtonType cancelButtonType;
  final Function(BuildContext)? onTap;
  final double? okHorizontalPadding;
  final double? cancelHorizontalPadding;
  final bool? cancelAble;

  double radius = 16;
  double buttonUnderSpace = 8;

  Future<void> showAlert() async {
    await showDialog(
      barrierDismissible: false, // 周囲黒部分のタップ無効
      context: context,
      builder: (_) {
        return WillPopScope(
            onWillPop: () async => cancelAble ?? true,
            child: AlertDialog(
              insetPadding: const EdgeInsets.all(16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius),
              ),
              actionsPadding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
              title: Text(
                title,
                textAlign: textAlign,
                style: IHSTextStyle.small,
              ),
              actions: <Widget>[
                cancelStr == null ? _buildSingleButtton() : _buildTwiceButtons(),
              ],
            ));
      },
    );
  }

  Widget _buildSingleButtton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IHSButton(okStr, type: okButtonType, horizontalInnerPadding: okHorizontalPadding, onPressed: () {
          onTap?.call(context);
          Navigator.of(context).pop();
        }),
      ],
    );
  }

  Widget _buildTwiceButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: IHSButton(okStr, type: okButtonType, horizontalInnerPadding: okHorizontalPadding, onPressed: () {
            onTap?.call(context);
            Navigator.of(context).pop();
          }),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: IHSButton(
            cancelStr!,
            type: cancelButtonType,
            horizontalInnerPadding: cancelHorizontalPadding,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        )
      ],
    );
  }
}
