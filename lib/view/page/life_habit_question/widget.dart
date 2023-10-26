import 'package:family_notes/view/component/prefix_text/widget.dart';
import 'package:family_notes/view/page/life_habit_question/last_question_button_group/widget.dart';
import 'package:family_notes/view/page/life_habit_question/question_navigation_button_group/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../util/util.dart';
import '../../component/gradation_layout/widget.dart';
import '../../style/colors.dart';
import '../../style/text_style.dart';
import 'notifier.dart';
import 'state.dart';

/// 生活習慣設問画面
class LifeHabitQuestionPage extends ConsumerWidget {
  const LifeHabitQuestionPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(lifeHabitQuestionStateProvider);
    final notifier = ref.watch(lifeHabitQuestionStateProvider.notifier);
    final scrollController = ScrollController();

    return GradationLayout(
      title: '生活習慣チェックシート',
      headerPressed: IHSUtil.getScrollTopFunction(scrollController),
      showDrawer: false,
      reload: () {
        ref.refresh(lifeHabitQuestionStateProvider);
      },
      body: state.map(
        loading: (_) => const SizedBox(),
        loaded: (loadedState) {
          final questions = loadedState.list;
          final currentIndex = loadedState.inputData.currentQuestionIndex;
          final question = questions[currentIndex];
          final indexText = '${currentIndex + 1}';
          final questionIndexText = 'Question. $indexText/16';

          return SingleChildScrollView(
            controller: scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                SvgPicture.asset(question.assetName),
                const SizedBox(height: 8),
                Text(
                  questionIndexText,
                  style: IHSTextStyle.small.copyWith(
                    color: IHSColors.pink400,
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    color: IHSColors.pink100,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    question.content,
                    style: IHSTextStyle.small.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                if (question.hint.isNotEmpty)
                  _PointTextArea(question: question),
                const SizedBox(height: 28),
                _ChoiceListArea(
                  question: question,
                  choiceList: question.choices,
                  currentChoiceId: loadedState.inputData.currentChoiceId,
                  notifier: notifier,
                ),
                const SizedBox(height: 40),
                _ButtonArea(
                  currentIndex: currentIndex,
                  currentChoiceId: loadedState.inputData.currentChoiceId,
                  notifier: notifier,
                  question: question,
                ),
                const SizedBox(height: 32),
                const PrefixText(
                  content: '画面左上の◀ボタンをタップすると入力中の内容は破棄され、入力一覧画面へ移ります。',
                ),
                const SizedBox(height: 16),
              ],
            ),
          );
        },
      ),
    );
  }
}

/// ポイント表示
class _PointTextArea extends StatelessWidget {
  const _PointTextArea({required this.question});

  final QuestionState question;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: IHSColors.pink50),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 4),
            decoration: const BoxDecoration(
              color: IHSColors.pink50,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Text(
              'Point',
              style: IHSTextStyle.small.copyWith(color: IHSColors.pink400),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsetsDirectional.all(16),
            decoration: const BoxDecoration(
              color: IHSColors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
            child: Text(
              question.hint,
              style: IHSTextStyle.small,
            ),
          ),
        ],
      ),
    );
  }
}

class _ButtonArea extends StatelessWidget {
  const _ButtonArea({
    required this.currentIndex,
    required this.currentChoiceId,
    required this.notifier,
    required this.question,
  });

  final int currentIndex;
  final int? currentChoiceId;
  final LifeHabitQuestionStateNotifier notifier;
  final QuestionState question;

  @override
  Widget build(BuildContext context) {
    /// 最後の質問のindex
    const lastQuestionIndex = 15;

    return Align(
      child: currentIndex == lastQuestionIndex
          ? LastQuestionButtonGroup(
              currentChoiceId: currentChoiceId,
              notifier: notifier,
              question: question,
            )
          : QuestionNavigationButtonGroup(
              currentQuestionIndex: currentIndex,
              currentChoiceId: currentChoiceId,
              notifier: notifier,
              question: question,
            ),
    );
  }
}

/// 選択肢一覧表示
class _ChoiceListArea extends StatelessWidget {
  const _ChoiceListArea({
    required this.question,
    required this.choiceList,
    required this.currentChoiceId,
    required this.notifier,
  });

  final QuestionState question;
  final List<ChoiceState> choiceList;
  final int? currentChoiceId;
  final LifeHabitQuestionStateNotifier notifier;

  @override
  Widget build(BuildContext context) {
    final list = choiceList.map((e) {
      return e.content.isEmpty
          ? const SizedBox.shrink()
          : Column(
              children: [
                GestureDetector(
                  onTap: () {
                    notifier
                      ..onChangedCurrentChoiceId(e.id)
                      ..setAnswer(questionId: question.id);
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        height: 24,
                        width: 24,
                        child: Radio(
                          value: e.id,
                          groupValue: currentChoiceId,
                          activeColor: IHSColors.black900,
                          onChanged: (_) {
                            // GestureDetectorにもRadio変更処理記載しているが、Radioタップ後にはGestureDetectorが発火してくれないため
                            notifier
                              ..onChangedCurrentChoiceId(e.id)
                              ..setAnswer(questionId: question.id);
                          },
                        ),
                      ),
                      const SizedBox(width: 16),
                      Text(
                        e.content,
                        style: IHSTextStyle.small,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 14),
              ],
            );
    }).toList();

    return Column(children: list);
  }
}
