import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:keyboard_actions/keyboard_actions.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../extension/date_time.dart';
import '../../../util/util.dart';
import '../../component/gradation_layout/widget.dart';
import '../../component/ihs_button/type.dart';
import '../../component/ihs_button/widget.dart';
import '../../component/ihs_dialog/widget.dart';
import '../../component/validate_date_pick_text_field/widget.dart';
import '../../style/constants.dart';
import '../../style/text_style.dart';
import '../../style/texts.dart';
import 'birth_input/widget.dart';
import 'body_info_input/widget.dart';
import 'dental_input/widget.dart';
import 'note_text_area/widget.dart';
import 'notifier.dart';
import 'select_result/widget.dart';
import 'state.dart';
import 'type.dart';

/// 乳幼児健診の入力画面
class ChildHealthCheckInputPage extends ConsumerStatefulWidget {
  const ChildHealthCheckInputPage({
    super.key,
    required this.inputData,
  });

  final ChildHealthCheckInputData inputData;

  @override
  ChildHealthCheckInputPageState createState() =>
      ChildHealthCheckInputPageState();
}

class ChildHealthCheckInputPageState
    extends ConsumerState<ChildHealthCheckInputPage> {
  final memoFocusNode = FocusNode();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => ref
          .read(childHealthCheckInputProvider.notifier)
          .setup(widget.inputData),
    );
    super.initState();
  }

  @override
  void dispose() {
    memoFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(childHealthCheckInputProvider);
    final scrollController = ScrollController();

    return GradationLayout(
      title: '健診結果入力',
      headerPressed: IHSUtil.getScrollTopFunction(scrollController),
      showDrawer: false,
      body: state.map(
        loading: (_) => const SizedBox(),
        loaded: (ChildHealthCheckInputLoaded state) {
          final actions = [
            IHSUtil.setKeyboardActionsItem(memoFocusNode),
          ];
          final notifier = ref.read(childHealthCheckInputProvider.notifier);
          final _widgetList = getWidgetList(state, memoFocusNode);
          final _form = notifier.form;
          final _isNew = widget.inputData.checkedDate == null;

          return KeyboardActions(
            autoScroll: false,
            config: IHSUtil.setKeyboardActionsConfigBar(actions),
            child: ReactiveForm(
              formGroup: _form,
              child: SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    Text('健診名', style: IHSTextStyle.small),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
                      child: Text(
                        state.inputData.selectedType!.checkUpName ?? '',
                        style: IHSTextStyle.small.copyWith(height: 1),
                      ),
                    ),
                    const SizedBox(height: 24),
                    ValidateDatePickTextField(
                      state.inputData.checkedDate,
                      title: '健診日',
                      isRequired: true,
                      controller: state.dateController!,
                      onChanged: notifier.onChangedCheckedDate,
                      lastYear: DatePickerConstants.currentYear,
                    ),
                    const SizedBox(height: 24),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: _widgetList.length,
                      itemBuilder: (context, index) => _widgetList[index],
                      separatorBuilder: (context, _) =>
                          const SizedBox(height: 24),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (!_isNew)
                          Row(
                            children: [
                              SizedBox(
                                width: 128,
                                child: IHSButton(
                                  '削除',
                                  type: IHSButtonType.gray,
                                  onPressed: () {
                                    FocusScope.of(context).unfocus();
                                    IHSDialog(
                                      context: context,
                                      title:
                                          '${widget.inputData.checkedDate!.yyyymmdd} の健診記録を\n削除します。\nよろしいですか？',
                                      okStr: '削除する',
                                      cancelStr: 'キャンセル',
                                      okButtonType: IHSButtonType.gray,
                                      cancelButtonType: IHSButtonType.primary,
                                      onTap: (_) {
                                        notifier.onTapDelete(
                                          childCheckupRecordId:
                                              widget.inputData.recordId!,
                                          onSuccess: () {
                                            IHSUtil.showSnackBar(
                                              msg: IHSTexts.deleteSuccess,
                                            );
                                            Navigator.of(context).pop();
                                          },
                                          onFailure: (msg) {
                                            IHSUtil.showSnackBar(msg: msg);
                                          },
                                        );
                                      },
                                    ).showAlert();
                                  },
                                ),
                              ),
                              const SizedBox(width: 24),
                            ],
                          ),
                        SizedBox(
                          width: 128,
                          child: IHSButton(
                            _isNew ? '登録' : '修正',
                            type: IHSButtonType.primary,
                            onPressed: () {
                              FocusScope.of(context).unfocus();
                              _form.markAllAsTouched();
                              if (!_form.valid) {
                                IHSUtil.showSnackBar(
                                  msg: IHSTexts.validateError,
                                );
                                return;
                              }

                              // 「要治療の虫歯」が「なし」の場合の対応
                              // 本数入力欄の値を空白に変更する
                              if (state.inputData.needDentalTreatment ==
                                  false) {
                                notifier.badTeethSetBlank();
                              }

                              notifier.onTapRegister(onSuccess: () {
                                IHSUtil.showSnackBar(
                                  msg: _isNew
                                      ? IHSTexts.createSuccess
                                      : IHSTexts.updateSuccess,
                                );
                                Navigator.of(context).pop();
                              }, onFailure: (msg) {
                                if (msg.isEmpty) {
                                  return;
                                }

                                IHSUtil.showSnackBar(msg: msg);
                              });
                            },
                          ),
                        )
                      ],
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
}

/// childCheckupTypeIdに応じた、画面のWidgetリスト
/// 表示させたい項目は、controllerをセットすると表示されます
List<Widget> getWidgetList(
  ChildHealthCheckInputLoaded state,
  FocusNode memoFocusNode,
) {
  final _selectedType = state.inputData.selectedType;
  final checkUpType = ChildHealthCheckType.convertType(
      typeId: _selectedType!.childCheckupTypeId!);

  switch (checkUpType) {
    case ChildHealthCheckType.oneMonthHealthCheck:
      return [
        BirthInput(birthText: state.childBirthCountDays),
        BodyInfoInput(
          hightController: state.heightController,
          weightController: state.weightController,
          headController: state.headController,
          chestController: state.chestController,
        ),
        const SelectResult(),
        MemoTextArea(
          memoController: state.memoController!,
          focusNode: memoFocusNode,
        ),
      ];
    case ChildHealthCheckType.fourMonthsHealthCheck:
      return [
        BirthInput(birthText: state.childBirthCountDays),
        BodyInfoInput(
          hightController: state.heightController,
          weightController: state.weightController,
          headController: state.headController,
          chestController: state.chestController,
        ),
        const SelectResult(),
        MemoTextArea(
          memoController: state.memoController!,
          focusNode: memoFocusNode,
        ),
      ];
    case ChildHealthCheckType.oneYearHealthCheck:
      return [
        BirthInput(birthText: state.childBirthCountDays),
        BodyInfoInput(
          hightController: state.heightController,
          weightController: state.weightController,
          headController: state.headController,
          chestController: state.chestController,
        ),
        const SelectResult(),
        MemoTextArea(
          memoController: state.memoController!,
          focusNode: memoFocusNode,
        ),
      ];
    case ChildHealthCheckType.oneYearSixMonthsHealthCheck:
      return [
        BirthInput(birthText: state.childBirthCountDays),
        BodyInfoInput(
          hightController: state.heightController,
          weightController: state.weightController,
          headController: state.headController,
          chestController: state.chestController,
        ),
        const SelectResult(),
        DentalInput(
          countBadTeethController: state.countBadTeethController,
          countTeethController: state.countTeethController,
        ),
        MemoTextArea(
          memoController: state.memoController!,
          focusNode: memoFocusNode,
        ),
      ];
    case ChildHealthCheckType.twoYearsSixMonthsDentalCheck:
      return [
        const SelectResult(),
        DentalInput(
          countBadTeethController: state.countBadTeethController,
          countTeethController: state.countTeethController,
        ),
        MemoTextArea(
          memoController: state.memoController!,
          focusNode: memoFocusNode,
        ),
      ];
    case ChildHealthCheckType.threeYearsHealthCheck:
      return [
        BirthInput(birthText: state.childBirthCountDays),
        BodyInfoInput(
          hightController: state.heightController,
          weightController: state.weightController,
          headController: state.headController,
        ),
        const SelectResult(),
        DentalInput(
            countBadTeethController: state.countBadTeethController,
            countTeethController: state.countTeethController),
        MemoTextArea(
          memoController: state.memoController!,
          focusNode: memoFocusNode,
        ),
      ];
    case ChildHealthCheckType.sixYearsDentalCheck:
      return [
        BirthInput(birthText: state.childBirthCountDays),
        const SelectResult(),
        DentalInput(
          countBadBabyTeethController: state.countBadBabyTeethController,
          countBadAdultTeethController: state.countBadAdultTeethController,
        ),
        MemoTextArea(
          memoController: state.memoController!,
          focusNode: memoFocusNode,
        ),
      ];
  }
}
