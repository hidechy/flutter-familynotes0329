import 'package:flutter/material.dart';

import '../../../util/util.dart';
import '../../component/gradation_layout/widget.dart';
import '../../component/home_button/widget.dart';
import '../../component/ihs_button/type.dart';
import '../../component/ihs_button/widget.dart';
import '../../style/colors.dart';
import '../../style/text_style.dart';
import '../life_habit_question_result/state.dart';

/// 生活習慣設問回答結果、総合コメント画面
class LifeHabitQuestionResultGeneralCommentPage extends StatelessWidget {
  const LifeHabitQuestionResultGeneralCommentPage({
    super.key,
    required this.generalComment,
  });

  final GeneralCommentsState generalComment;

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();

    return GradationLayout(
      title: '生活習慣チェックシート',
      headerPressed: IHSUtil.getScrollTopFunction(scrollController),
      showDrawer: false,
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            const SizedBox(height: 16),
            Text(
              '総合コメント',
              style: IHSTextStyle.medium.copyWith(color: IHSColors.pink500),
            ),
            const SizedBox(height: 32),
            _GeneralCommentArea(generalCommentState: generalComment),
            IHSButton(
              '回答結果へ戻る',
              type: IHSButtonType.primary,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 24),
            const HomeButton(),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class _GeneralCommentArea extends StatelessWidget {
  const _GeneralCommentArea({required this.generalCommentState});

  final GeneralCommentsState generalCommentState;

  @override
  Widget build(BuildContext context) {
    final perfectComment = generalCommentState.perfectComment;
    final categoryAreaList = <_CategoryArea>[];
    if (perfectComment.isEmpty) {
      generalCommentState.categoryList.forEach((e) {
        if (e.commentList.isEmpty) {
          return;
        }

        categoryAreaList.add(_CategoryArea(categoryState: e));
      });
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: perfectComment.isEmpty
          ? categoryAreaList
          : [
              Text(perfectComment),
              const SizedBox(height: 32),
            ],
    );
  }
}

class _CategoryArea extends StatelessWidget {
  const _CategoryArea({required this.categoryState});

  final CategoryState categoryState;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          categoryState.name,
          style: IHSTextStyle.small.copyWith(color: IHSColors.pink400),
        ),
        const Divider(color: IHSColors.pink200),
        for (final commnet in categoryState.commentList)
          Column(
            children: [
              Text(commnet.content, style: IHSTextStyle.small),
              const SizedBox(height: 32),
            ],
          ),
      ],
    );
  }
}
