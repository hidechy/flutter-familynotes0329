import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../component/ihs_button/type.dart';
import '../../../component/ihs_button/widget.dart';
import '../../../style/text_style.dart';
import '../state.dart';

/// その他のカテゴリーのコメント表示ダイアログ
class OtherCommentDialog extends StatelessWidget {
  const OtherCommentDialog({super.key, required this.otherComment});

  final OtherCommentState otherComment;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      actionsPadding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              otherComment.content,
              style: IHSTextStyle.small,
            ),
          ),
          const SizedBox(height: 24),
          SvgPicture.asset(
            otherComment.assetName,
            width: 40,
            height: 40,
          ),
          const SizedBox(height: 24),
          IHSButton(
            '閉じる',
            horizontalInnerPadding: 32,
            type: IHSButtonType.primary,
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
