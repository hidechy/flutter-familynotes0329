import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../component/ihs_button/type.dart';
import '../../../component/ihs_button/widget.dart';
import '../../../style/text_style.dart';
import '../state.dart';

/// 回答に対してのコメント表示ダイアログ
class AnswerCommentDialog extends StatelessWidget {
  const AnswerCommentDialog({super.key, required this.question});

  final QuestionAnswerResultState question;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      actionsPadding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
      title: question.pointAssetName.isEmpty
          ? const SizedBox.shrink()
          : SvgPicture.asset(
              question.pointAssetName,
              width: 144,
              height: 40,
            ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              question.comment,
              style: IHSTextStyle.small,
            ),
          ),
          const SizedBox(height: 24),
          SvgPicture.asset(
            question.assetName,
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
