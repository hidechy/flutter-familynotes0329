import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../extension/context.dart';
import '../../../gen/assets.gen.dart';
import '../../../util/page_navigator.dart';
import '../../../util/util.dart';
import '../../component/gradation_layout/widget.dart';
import '../../component/ihs_button/type.dart';
import '../../component/ihs_button/widget.dart';
import '../../component/ihs_image_button/widget.dart';
import '../../style/colors.dart';
import '../../style/text_style.dart';
import '../life_habit_question_general_comment/widget.dart';
import 'answer_commnet_dialog/widget.dart';
import 'notifier.dart';
import 'other_comment_daialog/widget.dart';
import 'state.dart';
import 'type.dart';

/// 生活習慣設問回答結果画面
class LifeHabitQuestionResultPage extends ConsumerWidget {
  const LifeHabitQuestionResultPage({
    super.key,
    required this.type,
    required this.answerHeaderId,
    required this.date,
  });

  final QuestionAnswerResultType type;
  final int answerHeaderId;
  final String date;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final status = ref.watch(lifeHabitQuestionResultStateProvider(answerHeaderId));
    final scrollController = ScrollController();

    return GradationLayout(
      title: '生活習慣チェックシート',
      headerPressed: IHSUtil.getScrollTopFunction(scrollController),
      showDrawer: false,
      reload: () {
        ref.refresh(lifeHabitQuestionResultStateProvider(answerHeaderId));
      },
      // 入力履歴からの遷移の場合は戻るボタン必要のため
      automaticallyImplyLeading: QuestionAnswerResultType.past == type,
      horizontalPadding: 0,
      body: status.map(
        loading: (_) => const SizedBox(),
        loaded: (loadedState) {
          final questions = loadedState.list;

          return Padding(
            padding: const EdgeInsets.only(right: 4),
            child: Scrollbar(
              controller: scrollController,
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 20),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    children: [
                      const SizedBox(height: 16),
                      Column(
                        children: [
                          _buildText(date),
                          _buildText('回答結果'),
                        ],
                      ),
                      const SizedBox(height: 24),
                      // 設問回答内容
                      for (var index = 0; index < questions.length; index++)
                        _AnswerResultArea(question: questions[index]),
                      // 設問とは関係のない固定表示の内容
                      for (final otherCategory in loadedState.otherComments.categoryList)
                        _OtherCategoryArea(otherCategory: otherCategory),
                      const Divider(color: IHSColors.pink300),
                      const SizedBox(height: 24),
                      IHSButton(
                        '総合コメントを見る',
                        type: IHSButtonType.primary,
                        onPressed: () {
                          PageNavigator.navigatePage(
                            context,
                            LifeHabitQuestionResultGeneralCommentPage(
                              generalComment: loadedState.generalComments,
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildText(String text) {
    return Text(
      text,
      style: IHSTextStyle.medium.copyWith(
        color: IHSColors.pink500,
      ),
    );
  }
}

/// 回答結果表示
class _AnswerResultArea extends StatelessWidget {
  const _AnswerResultArea({required this.question});

  final QuestionAnswerResultState question;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(color: IHSColors.pink300),
        const SizedBox(height: 24),
        SvgPicture.asset(question.assetName),
        const SizedBox(height: 8),
        Text(
          'Question.${question.id}',
          style: IHSTextStyle.small.copyWith(
            color: IHSColors.pink400,
          ),
        ),
        const SizedBox(height: 8),
        Text(question.content, style: IHSTextStyle.small),
        const SizedBox(height: 16),
        _ChoiceListArea(
          choices: question.choices,
          answerChoiceId: question.answer,
        ),
        const SizedBox(height: 16),
        Align(
          child: question.pointAssetName.isEmpty ? const SizedBox.shrink() : SvgPicture.asset(question.pointAssetName),
        ),
        const SizedBox(height: 16),
        Align(
          child: IHSImageButton(
            SvgPicture.asset(Assets.images.iconComment),
            title: 'コメントを見る',
            horizontalMargin: 16,
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AnswerCommentDialog(question: question);
                },
              );
            },
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

/// 設問に紐づいた選択肢の表示
class _ChoiceListArea extends StatelessWidget {
  const _ChoiceListArea({
    required this.choices,
    required this.answerChoiceId,
  });

  final List<ChoiceState> choices;
  final int answerChoiceId;

  @override
  Widget build(BuildContext context) {
    /// 選択肢テキスト一覧
    final texts = <Widget>[];
    choices.forEach((e) {
      final content = e.content;
      if (content.isEmpty) {
        return;
      }

      texts.add(
        Flexible(
          child: Center(
            child: Text(
              content,
              style: IHSTextStyle.xSmall.copyWith(fontSize: 10),
            ),
          ),
        ),
      );
    });

    final deviceWidth = context.screenWidth;
    const gradiationLayoutPadding = 24;
    final choiceAreaWidth = deviceWidth - gradiationLayoutPadding * 2;
    final padding = choiceAreaWidth / choices.length / 2;
    final verticalBars = <Widget>[];
    choices.asMap().forEach((index, e) {
      final selected = e.id == answerChoiceId;
      if (e.content.isNotEmpty) {
        verticalBars.add(
          _buildVertialLine(selected: selected),
        );
      }
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: texts,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: verticalBars,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: const Divider(
            color: IHSColors.pink100,
            height: 1,
            thickness: 1,
          ),
        )
      ],
    );
  }

  Widget _buildVertialLine({required bool selected}) {
    return SizedBox(
      width: 24,
      child: Column(
        children: [
          selected ? SvgPicture.asset(Assets.images.akarIconstriangleFill) : const SizedBox(height: 24),
          Container(
            height: 10,
            width: 1,
            color: IHSColors.pink100,
          ),
        ],
      ),
    );
  }
}

/// その他のカテゴリーの表示
class _OtherCategoryArea extends StatelessWidget {
  const _OtherCategoryArea({
    required this.otherCategory,
  });

  final OtherCategoryState otherCategory;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(color: IHSColors.pink300),
        const SizedBox(height: 24),
        Text(
          otherCategory.name,
          style: IHSTextStyle.small.copyWith(color: IHSColors.pink400),
        ),
        const SizedBox(height: 8),
        for (final otherComment in otherCategory.commentList)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                otherComment.title,
                style: IHSTextStyle.small,
              ),
              const SizedBox(height: 8),
              Align(
                child: IHSImageButton(
                  SvgPicture.asset(Assets.images.iconComment),
                  title: 'コメントを見る',
                  horizontalMargin: 16,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return OtherCommentDialog(otherComment: otherComment);
                      },
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
      ],
    );
  }
}
