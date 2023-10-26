import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:keyboard_actions/keyboard_actions.dart';

import '../../../gen/assets.gen.dart';
import '../../../util/page_navigator.dart';
import '../../../util/util.dart';
import '../../component/gradation_layout/widget.dart';
import '../../component/ihs_button/type.dart';
import '../../component/ihs_button/widget.dart';
import '../../component/multiline_text_field/widget.dart';
import '../../component/swicth_area/widget.dart';
import '../../style/colors.dart';
import '../../style/text_style.dart';
import '../../style/texts.dart';
import '../check_sheet_growth_result/widget.dart';
import 'notifier.dart';
import 'state.dart';
import 'status.dart';

/// 発達チェックシート画面
class CheckSheetGrowthPage extends ConsumerWidget {
  const CheckSheetGrowthPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(checkSheetGrowthProvider);
    final notifier = ref.watch(checkSheetGrowthProvider.notifier);
    final scrollController = ScrollController();

    return GradationLayout(
      title: '発達チェック',
      headerPressed: IHSUtil.getScrollTopFunction(scrollController),
      showDrawer: false,
      horizontalPadding: 0,
      reload: () {
        ref.refresh(checkSheetGrowthProvider);
      },
      body: state.map(
        loading: (_) => const SizedBox(),
        loaded: (loadedState) {
          final list = loadedState.list;

          return KeyboardActions(
            autoScroll: false,
            config: _buildConfig(list),
            child: Padding(
              padding: const EdgeInsets.only(right: 4),
              child: Scrollbar(
                controller: scrollController,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24, right: 20),
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 16),
                        _SwicthTileArea(
                          isShowOnlyUnAnswered: loadedState.isShowOnlyUnAnswered,
                          notifier: notifier,
                        ),
                        const SizedBox(height: 40),
                        for (final category in list)
                          Visibility(
                            visible: category.isShowQuestionCategoryArea,
                            child: _QuestionCategoryArea(
                              categoryState: category,
                              notifier: notifier,
                            ),
                          ),
                        Center(
                          child: IHSButton(
                            '登録する',
                            type: IHSButtonType.primary,
                            onPressed: () async {
                              FocusScope.of(context).unfocus();
                              await notifier.onTapSave(
                                onSuccess: (result) async {
                                  IHSUtil.showSnackBar(
                                    msg: IHSTexts.createSuccess,
                                  );
                                  await PageNavigator.navigatePage(
                                    context,
                                    CheckSheetGrowthResultPage(
                                      answerResult: result,
                                    ),
                                    callback: () async {
                                      await notifier.fetchDetails();
                                    },
                                  );
                                },
                                onFailure: () {
                                  Navigator.pop(context);
                                },
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  KeyboardActionsConfig _buildConfig(List<GrowthDetailCategoryState> list) {
    return IHSUtil.setKeyboardActionsConfigBar([
      for (final category in list)
        for (final question in category.questionList)
          // 表示されてない設問のFocunNodeが含められていると、「前へ」「次へ」ボタン押下時に
          // 表示されていない設問のFocusNodeを探しに行って見つからず、キーボードが閉じてしまうため
          if (question.isShowQuestionArea) IHSUtil.setKeyboardActionsItem(question.focusNode)
    ]);
  }
}

class _SwicthTileArea extends StatelessWidget {
  const _SwicthTileArea({
    required this.isShowOnlyUnAnswered,
    required this.notifier,
  });

  final bool isShowOnlyUnAnswered;
  final CheckSheetGrowthNotifier notifier;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        notifier
          ..onChangedIsShowOnlyUnAnswered(value: !isShowOnlyUnAnswered)
          ..onChangedIsShowQuestionArea()
          ..onChangedIsShowQuestionCategoryArea();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              '月齢に応じてチェックした項目のうち未回答のみにする。',
              style: IHSTextStyle.small,
            ),
          ),
          const SizedBox(width: 16),
          SwitchArea(
            value: isShowOnlyUnAnswered,
            onChanged: (value) {
              FocusScope.of(context).unfocus();
              notifier
                ..onChangedIsShowOnlyUnAnswered(value: value)
                ..onChangedIsShowQuestionArea()
                ..onChangedIsShowQuestionCategoryArea();
            },
          ),
        ],
      ),
    );
  }
}

class _QuestionCategoryArea extends StatelessWidget {
  const _QuestionCategoryArea({
    required this.categoryState,
    required this.notifier,
  });

  final GrowthDetailCategoryState categoryState;
  final CheckSheetGrowthNotifier notifier;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          categoryState.category,
          style: IHSTextStyle.medium.copyWith(
            color: IHSColors.pink400,
          ),
        ),
        const Divider(color: IHSColors.pink200),
        const SizedBox(height: 16),
        _QuestionListArea(
          category: categoryState,
          notifier: notifier,
        ),
      ],
    );
  }
}

class _QuestionListArea extends StatelessWidget {
  const _QuestionListArea({
    required this.category,
    required this.notifier,
  });

  final GrowthDetailCategoryState category;
  final CheckSheetGrowthNotifier notifier;

  @override
  Widget build(BuildContext context) {
    final questionList = category.questionList.map((e) {
      final isNoCheck = GrowthQuestionCheckStatus.no.value == e.isCheck;

      if (!e.isShowQuestionArea) {
        return const SizedBox.shrink();
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            e.question,
            style: IHSTextStyle.small,
          ),
          const SizedBox(height: 24),
          Center(
            child: GestureDetector(
              onTap: () {
                notifier
                  ..onTapCheck(
                    categoryId: category.id,
                    questionId: e.questionId,
                  )
                  ..onChangedIsShowQuestionArea()
                  ..onChangedIsShowQuestionCategoryArea();
              },
              child: SvgPicture.asset(
                isNoCheck ? Assets.images.tapFace : Assets.images.tapFaceActive,
                color: isNoCheck ? IHSColors.black200 : IHSColors.pink400,
              ),
            ),
          ),
          Column(
            children: [
              const SizedBox(height: 8),
              Center(
                child: Text(
                  isNoCheck ? '当てはまっていたらタップしてください。' : '',
                  style: IHSTextStyle.xSmall,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          MultilineTextField(
            controller: e.noteController,
            focusNode: e.focusNode,
            maxLines: 4,
            hintText: '自由に記入してください。',
          ),
          const SizedBox(height: 32),
        ],
      );
    }).toList();

    return Column(children: questionList);
  }
}
