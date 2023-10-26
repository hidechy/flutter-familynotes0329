import 'package:family_notes/gen/assets.gen.dart';
import 'package:family_notes/util/util.dart';
import 'package:family_notes/view/component/swicth_area/widget.dart';
import 'package:family_notes/view/page/check_sheet_support/notifier.dart';
import 'package:family_notes/view/page/check_sheet_support/state.dart';
import 'package:family_notes/view/page/check_sheet_support_result/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:keyboard_actions/keyboard_actions.dart';

import '../../../util/page_navigator.dart';
import '../../component/gradation_layout/widget.dart';
import '../../component/ihs_button/type.dart';
import '../../component/ihs_button/widget.dart';
import '../../component/multiline_text_field/widget.dart';
import '../../style/colors.dart';
import '../../style/text_style.dart';
import '../../style/texts.dart';
import 'status.dart';

/// サポートチェックシート画面
class CheckSheetSupportPage extends ConsumerWidget {
  const CheckSheetSupportPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(checkSheetSupportProvider);
    final notifier = ref.watch(checkSheetSupportProvider.notifier);
    final scrollController = ScrollController();

    return GradationLayout(
      title: 'サポートチェック',
      headerPressed: IHSUtil.getScrollTopFunction(scrollController),
      showDrawer: false,
      horizontalPadding: 0,
      reload: () {
        ref.refresh(checkSheetSupportProvider);
      },
      body: state.map(
        loading: (_) => const SizedBox(),
        loaded: (loadedState) {
          final largeCategoryList = loadedState.largeCategoryList;

          return KeyboardActions(
            autoScroll: false,
            config: _buildConfig(largeCategoryList),
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
                        Text(
                          'すいすいシートご記入の際は、ONを選択いただくとお子さまに関連すると回答された項目のみが表示されます。',
                          style: IHSTextStyle.small,
                        ),
                        const SizedBox(height: 16),
                        Align(
                          alignment: Alignment.centerRight,
                          child: SwitchArea(
                            value: loadedState.isShowOnlyAnswered,
                            onChanged: (value) {
                              FocusScope.of(context).unfocus();
                              notifier
                                ..onChangedIsShowOnlyAnswered(value: value)
                                ..onChangedIsShowQuestionArea()
                                ..onChangedIsShowSmallCategoryArea()
                                ..onChangedIsShowLargeCategoryArea();
                            },
                          ),
                        ),
                        const SizedBox(height: 40),
                        for (final largeCategory in largeCategoryList)
                          Visibility(
                            visible: largeCategory.isShowLargeCategoryArea,
                            child: _LargeCategoryArea(
                              isShowOnlyAnswered:
                                  loadedState.isShowOnlyAnswered,
                              largeCategoryState: largeCategory,
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
                                onSuccess: () async {
                                  IHSUtil.showSnackBar(
                                    msg: IHSTexts.createSuccess,
                                  );
                                  await PageNavigator.navigatePage(
                                    context,
                                    const CheckSheetSupportResultPage(),
                                    callback: () async {
                                      await notifier.fetchList();
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

  KeyboardActionsConfig _buildConfig(
      List<CheckSheetSupportLargeCategoryState> list) {
    return IHSUtil.setKeyboardActionsConfigBar([
      for (final category in list)
        for (final smallCategory in category.smallCategoryList)
          for (final question in smallCategory.questionList)
            if (question.isShowQuestionArea)
              IHSUtil.setKeyboardActionsItem(question.focusNode)
    ]);
  }
}

class _LargeCategoryArea extends StatelessWidget {
  const _LargeCategoryArea({
    required this.isShowOnlyAnswered,
    required this.largeCategoryState,
    required this.notifier,
  });

  final bool isShowOnlyAnswered;
  final CheckSheetSupportLargeCategoryState largeCategoryState;
  final CheckSheetSupportNotifier notifier;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          largeCategoryState.name,
          style: IHSTextStyle.medium.copyWith(
            color: IHSColors.pink400,
          ),
        ),
        const Divider(color: IHSColors.pink200),
        const SizedBox(height: 16),
        for (final smallCategory in largeCategoryState.smallCategoryList)
          Visibility(
            visible: smallCategory.isShowSmallCategoryArea,
            child: _SmallCategoryArea(
              isShowOnlyAnswered: isShowOnlyAnswered,
              largeCategoryId: largeCategoryState.id,
              smallCategoryState: smallCategory,
              notifier: notifier,
            ),
          )
      ],
    );
  }
}

class _SmallCategoryArea extends StatelessWidget {
  const _SmallCategoryArea({
    required this.isShowOnlyAnswered,
    required this.smallCategoryState,
    required this.notifier,
    required this.largeCategoryId,
  });

  final bool isShowOnlyAnswered;
  final int largeCategoryId;
  final CheckSheetSupportSmallCategoryState smallCategoryState;
  final CheckSheetSupportNotifier notifier;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          smallCategoryState.name,
          style: IHSTextStyle.small.copyWith(
            color: IHSColors.pink400,
          ),
        ),
        const SizedBox(height: 16),
        _QuestionListArea(
          isShowOnlyAnswered: isShowOnlyAnswered,
          largeCategoryId: largeCategoryId,
          smallCategoryId: smallCategoryState.id,
          questionStateList: smallCategoryState.questionList,
          notifier: notifier,
        )
      ],
    );
  }
}

class _QuestionListArea extends StatelessWidget {
  const _QuestionListArea({
    required this.isShowOnlyAnswered,
    required this.largeCategoryId,
    required this.smallCategoryId,
    required this.questionStateList,
    required this.notifier,
  });

  final bool isShowOnlyAnswered;
  final int largeCategoryId;
  final int smallCategoryId;
  final List<SupportQuestionState> questionStateList;
  final CheckSheetSupportNotifier notifier;

  @override
  Widget build(BuildContext context) {
    final questionList = questionStateList.map((e) {
      final isNoCheck = SupportQuestionCheckStatus.no.value == e.isCheck;

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
                if (isShowOnlyAnswered) {
                  notifier
                    ..onTapCheck(
                      largeCategoryId: largeCategoryId,
                      smallCategoryId: smallCategoryId,
                      questionId: e.questionId,
                    )
                    ..onChangedIsShowQuestionArea()
                    ..onChangedIsShowSmallCategoryArea()
                    ..onChangedIsShowLargeCategoryArea();
                  return;
                }

                notifier.onTapCheck(
                  largeCategoryId: largeCategoryId,
                  smallCategoryId: smallCategoryId,
                  questionId: e.questionId,
                );
              },
              child: SvgPicture.asset(
                isNoCheck
                    ? Assets.images.tapCloverInactive
                    : Assets.images.tapCloverActive,
              ),
            ),
          ),
          SizedBox(height: isNoCheck ? 8 : 6),
          isNoCheck
              ? Center(
                  child: Text(
                    '当てはまっていたらタップしてください。',
                    style: IHSTextStyle.xSmall,
                  ),
                )
              : Text(
                  'できるだけ詳しく入力してください。',
                  style: IHSTextStyle.small,
                ),
          SizedBox(height: isNoCheck ? 8 : 6),
          MultilineTextField(
            controller: e.noteController,
            focusNode: e.focusNode,
            maxLines: 4,
            hintText: e.example,
          ),
          const SizedBox(height: 32),
        ],
      );
    }).toList();

    return Column(children: questionList);
  }
}
