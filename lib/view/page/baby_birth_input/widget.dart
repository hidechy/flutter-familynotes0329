import 'dart:async';

import 'package:family_notes/view/style/texts.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:keyboard_actions/keyboard_actions.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../provider/child/notifier.dart';
import '../../../util/page_navigator.dart';
import '../../../util/util.dart';
import '../../component/gradation_layout/widget.dart';
import '../../component/ihs_button/type.dart';
import '../../component/ihs_button/widget.dart';
import '../../component/multiline_text_field/widget.dart';
import '../../component/plain_text_field/widget.dart';
import '../../component/validate_text_field/type.dart';
import '../../component/validate_text_field/widget.dart';
import '../../style/text_style.dart';
import '../baby_birth_complete/widget.dart';
import '../child_book_select/notifier.dart';
import 'birth_tile/widget.dart';
import 'notifier.dart';
import 'state.dart';

/// 出産情報入力画面
/// - 双子以上の場合はその分の子ども情報を入力します
class BabyBirthInputPage extends ConsumerStatefulWidget {
  const BabyBirthInputPage({
    super.key,
    this.childNumber = 1,
    // 初期の入力データ(新規登録ならnull)
    this.initialInputData,
  });

  final int childNumber;
  final BabyBirthInputData? initialInputData;

  @override
  BabyBirthInputState createState() => BabyBirthInputState();
}

class BabyBirthInputState extends ConsumerState<BabyBirthInputPage> {
  late TextEditingController addressController;
  late TextEditingController doctorController;
  final freeCommentFocusNode = FocusNode();
  final parentFeelingFocusNode = FocusNode();
  final messageFocusNode = FocusNode();

  @override
  void initState() {
    final initialData = widget.initialInputData;
    final isNullInitialData = initialData == null;
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        ref
            .read(babyBirthInputStateProvider.notifier)
            .setup(widget.childNumber, initialData);
      },
    );

    addressController = TextEditingController(
      text: isNullInitialData ? '' : initialData.address,
    );
    doctorController = TextEditingController(
      text: isNullInitialData ? '' : initialData.doctor,
    );
    super.initState();
  }

  @override
  void dispose() {
    addressController.dispose();
    doctorController.dispose();
    freeCommentFocusNode.dispose();
    parentFeelingFocusNode.dispose();
    messageFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(babyBirthInputStateProvider);
    final scrollController = ScrollController();

    return GradationLayout(
      title: widget.initialInputData == null ? '出産情報登録' : '出産情報編集',
      headerPressed: IHSUtil.getScrollTopFunction(scrollController),
      showDrawer: false,
      body: state.map(
        loading: (_) => const SizedBox(),
        loaded: (state) {
          final actions = [
            IHSUtil.setKeyboardActionsItem(parentFeelingFocusNode),
            IHSUtil.setKeyboardActionsItem(messageFocusNode),
            IHSUtil.setKeyboardActionsItem(freeCommentFocusNode),
          ];
          final notifier = ref.read(babyBirthInputStateProvider.notifier);
          final form = state.form;
          final inputData = state.inputData;
          final parentFeelingController = state.parentFeelingController;
          final messageController = state.messageController;
          final freeCommentController = state.freeCommentController;

          return KeyboardActions(
            autoScroll: false,
            config: IHSUtil.setKeyboardActionsConfigBar(actions),
            child: ReactiveForm(
              formGroup: form,
              child: SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  children: [
                    const SizedBox(height: 16),
                    if (inputData != null)
                      ...inputData.childList.map(
                        (data) {
                          return Column(
                            children: [
                              BabyBirthTile(
                                form: form,
                                isShowGenderValidateMessage:
                                    state.isShowGenderValidateMessage,
                                // 複数人の時のみタイトルを表示
                                showTitle: inputData.childList.length > 1,
                                key: Key('BabyBirthTile_${data.index}'),
                                data: data,
                                onChanged: (data) {
                                  notifier.onChangedBabyBirthDataByChild(
                                    data.index,
                                    data,
                                  );
                                },
                              ),
                              const SizedBox(height: 32),
                            ],
                          );
                        },
                      ),
                    Row(
                      children: [
                        Text(
                          '妊娠期間',
                          style: IHSTextStyle.small,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(width: 16),
                            ValidateTextField(
                              width: 72,
                              type: ValidateTextFieldType.week,
                              controller: state.weekController!,
                              keyboardType:
                                  const TextInputType.numberWithOptions(
                                      decimal: true),
                              canDecimalInput: false,
                              textAlign: TextAlign.center,
                              onChanged: notifier.onChangedPregnancyWeeks,
                            ),
                            const SizedBox(width: 8),
                            Padding(
                              padding: const EdgeInsets.only(top: 24),
                              child: Text('週', style: IHSTextStyle.small),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(width: 16),
                            ValidateTextField(
                              width: 72,
                              type: ValidateTextFieldType.day,
                              controller: state.dayController!,
                              keyboardType:
                                  const TextInputType.numberWithOptions(
                                decimal: true,
                              ),
                              canDecimalInput: false,
                              textAlign: TextAlign.center,
                              onChanged: notifier.onChangedPregnancyWeekDays,
                            ),
                            const SizedBox(width: 8),
                            Padding(
                              padding: const EdgeInsets.only(top: 24),
                              child: Text('日', style: IHSTextStyle.small),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),
                    PlainTextField(
                      controller: addressController,
                      title: '出産した場所',
                      onChanged: notifier.onChangedAddress,
                    ),
                    const SizedBox(height: 24),
                    PlainTextField(
                      controller: doctorController,
                      title: '医師または助産師',
                      onChanged: notifier.onChangedDoctor,
                    ),
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        Text(
                          'ママ、パパの気持ち',
                          style: IHSTextStyle.small,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    MultilineTextField(
                      controller: parentFeelingController!,
                      focusNode: parentFeelingFocusNode,
                      maxLines: 3,
                      hintText: '自由に記入してください。',
                      onChanged: notifier.onChangedParentFeeling,
                    ),
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        Text(
                          '赤ちゃんへのメッセージ',
                          style: IHSTextStyle.small,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    MultilineTextField(
                      controller: messageController!,
                      focusNode: messageFocusNode,
                      maxLines: 3,
                      hintText: '自由に記入してください。',
                      onChanged: notifier.onChangedMessage,
                    ),
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        Text(
                          '自由にコメントを記載してください。',
                          style: IHSTextStyle.small,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    MultilineTextField(
                      controller: freeCommentController!,
                      focusNode: freeCommentFocusNode,
                      maxLines: 3,
                      hintText: '自由に記入してください。',
                      onChanged: notifier.onChangedFreeComment,
                    ),
                    const SizedBox(height: 32),
                    IHSButton(
                      widget.initialInputData == null ? '登録' : '修正',
                      type: IHSButtonType.primary,
                      onPressed: () {
                        notifier.showGenderValidateMessage();
                        FocusScope.of(context).unfocus();
                        form.markAllAsTouched();
                        if (!form.valid) {
                          IHSUtil.showSnackBar(msg: IHSTexts.validateError);
                          return;
                        }

                        notifier
                          ..hideGenderValidateMessage()
                          ..onTapRegister(
                            isEdit: widget.initialInputData != null,
                            onSuccess: (id) async {
                              await _popOrPushToComplete(
                                context,
                                addedChildId: id,
                              );
                            },
                            onFailure: (msg) {
                              IHSUtil.showSnackBar(msg: msg);
                            },
                          );
                      },
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _popOrPushToComplete(
    BuildContext context, {
    required int addedChildId,
  }) async {
    // 新規登録なら完了画面へ
    if (widget.initialInputData == null) {
      unawaited(
        PageNavigator.navigatePage(
          context,
          BabybirthCompletePage(addedChildId: addedChildId),
          type: PageNavigator.typePushReplacement,
        ),
      );
      return;
    }
    // 修正した子供情報の更新
    await ref.read(selectedChildStateProvider.notifier).fetch(
          childId: addedChildId,
          childType: 'child',
          onFailure: (_) => IHSUtil.showSnackBar(msg: IHSTexts.error),
        );
    await ref.read(childListStatusProvider.notifier).fetch();

    Navigator.of(context).pop();
    IHSUtil.showSnackBar(msg: 'お子さま情報を更新しました');
  }
}
