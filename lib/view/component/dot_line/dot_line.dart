import 'package:flutter/material.dart';

import '../../style/colors.dart';

/// 破線
class DotLine extends StatelessWidget {
  const DotLine({
    super.key,
    this.dashedWidth = 5,
    this.dashedHeight = 1,
    this.dashedSpace = 3,
    this.color = IHSColors.black200,
    this.paddingLeft = 0,
    this.paddingRight = 0,
  });

  //
  final double paddingLeft;
  final double paddingRight;

  /// 破線単体の幅
  final double dashedWidth;

  /// 破線の高さ
  final double dashedHeight;

  /// 破線の間隔
  final double dashedSpace;

  /// 破線の色
  final Color color;

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: dashedHeight,
      child: Padding(
        padding: EdgeInsets.only(left: paddingLeft, right: paddingRight),
        child: CustomPaint(
          size: Size(maxWidth, dashedHeight),
          painter: _DashedLinePainter(
            dashedWidth: dashedWidth,
            dashedHeight: dashedHeight,
            dashedSpace: dashedSpace,
            color: color,
          ),
        ),
      ),
    );
  }
}

/// 直線
class StraightLine extends StatelessWidget {
  const StraightLine({
    super.key,
    this.lineHeight = 1,
    this.color = IHSColors.black200,
    this.paddingLeft = 0,
    this.paddingRight = 0,
  });

  //
  final double paddingLeft;
  final double paddingRight;

  /// 線の高さ
  final double lineHeight;

  /// 破線の色
  final Color color;

  @override
  Widget build(BuildContext context) {
    /// 線の幅
    final lineWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: paddingLeft, right: paddingRight),
      child: SizedBox(
        height: lineHeight,
        child: CustomPaint(
          size: Size(lineWidth, lineHeight),
          painter: _StraightLinePainter(
            lineWidth: lineWidth,
            lineHeight: lineHeight,
            color: color,
          ),
        ),
      ),
    );
  }
}

class _DashedLinePainter extends CustomPainter {
  const _DashedLinePainter({
    required this.dashedWidth,
    required this.dashedHeight,
    required this.dashedSpace,
    required this.color,
  });

  /// 破線単体の幅
  final double dashedWidth;

  /// 破線の高さ
  final double dashedHeight;

  /// 破線の間隔
  final double dashedSpace;

  /// 破線の色
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    var dashedStartX = 0.0;
    final paint = Paint()
      ..color = color
      ..strokeWidth = dashedHeight;
    while (dashedStartX < size.width) {
      // 始点
      final startOffset = Offset(dashedStartX, 0);
      // 終点
      final endOffset = Offset(dashedStartX + dashedWidth, 0);
      // 始点から終点にかけて描画
      canvas.drawLine(startOffset, endOffset, paint);
      // 始点のX座標を更新
      dashedStartX = dashedStartX + dashedWidth + dashedSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class _StraightLinePainter extends CustomPainter {
  const _StraightLinePainter({
    required this.lineWidth,
    required this.lineHeight,
    required this.color,
  });

  final double lineWidth;
  final double lineHeight;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = lineHeight;
    // 始点から終点にかけて描画
    canvas.drawLine(Offset.zero, Offset(lineWidth, 0), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
