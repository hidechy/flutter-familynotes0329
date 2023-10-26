import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:keyboard_actions/keyboard_actions.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../data/model/checkup_list/model.dart';
import '../../../extension/date_time.dart';
import '../../../util/util.dart';
import '../../component/gradation_layout/widget.dart';
import '../../component/ihs_button/type.dart';
import '../../component/ihs_button/widget.dart';
import '../../component/ihs_dialog/widget.dart';
import '../../component/multiline_text_field/widget.dart';
import '../../component/validate_date_pick_text_field/widget.dart';
import '../../component/validate_text_field/type.dart';
import '../../component/validate_text_field/validation.dart';
import '../../component/validate_text_field/widget.dart';
import '../../style/colors.dart';
import '../../style/constants.dart';
import '../../style/text_style.dart';
import '../../style/texts.dart';
import 'notifier.dart';
import 'select_list_view/widget.dart';
import 'state.dart';

/// 妊婦健診入力画面
class PregnantHealthCheckInputPage extends ConsumerStatefulWidget {
  const PregnantHealthCheckInputPage({
    super.key,
    // 健診データ(新規登録ならnull)
    this.checkupModel,
  });

  final CheckupModel? checkupModel;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PregnantHealthCheckInputPageState();
}

class _PregnantHealthCheckInputPageState
    extends ConsumerState<PregnantHealthCheckInputPage> {
  final FocusNode memoFocusNode = FocusNode();

  @override
  void dispose() {
    memoFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final checkupModel = widget.checkupModel;
    final state =
        ref.watch(pregnantHealthCheckInputStateProvider(checkupModel));
    final notifier =
        ref.watch(pregnantHealthCheckInputStateProvider(checkupModel).notifier);
    final scrollController = ScrollController();

    return GradationLayout(
      title: '妊婦健診入力',
      headerPressed: IHSUtil.getScrollTopFunction(scrollController),
      showDrawer: false,
      body: state.map(
        init: (_) => const SizedBox(),
        loading: (_) => const SizedBox(),
        loaded: (value) {
          final actions = [
            IHSUtil.setKeyboardActionsItem(memoFocusNode),
          ];
          final _state = value.data;
          final inputData = _state.inputData;
          final memoController =
              inputData.memoController ?? TextEditingController(text: '');
          final _date = inputData.date;

          final dateController = getController(
            type: ValidateTextFieldType.date,
            value: _date != null ? _date.yyyymmdd : '',
          );
          final weekController = getController(
            type: ValidateTextFieldType.week,
            isRequired: false,
            value: inputData.week,
            validator: NumValidationType.week.numValid,
          );
          final dayController = getController(
            type: ValidateTextFieldType.day,
            isRequired: false,
            value: inputData.day,
            validator: NumValidationType.day.numValid,
          );
          final weightController = getController(
            type: ValidateTextFieldType.pregnantWeight,
            isRequired: false,
            value: inputData.weight,
            validator: NumValidationType.pregnantWeight.numValid,
          );

          final form = FormGroup({
            ValidateTextFieldType.date.name: dateController,
            ValidateTextFieldType.week.name: weekController,
            ValidateTextFieldType.day.name: dayController,
            ValidateTextFieldType.pregnantWeight.name: weightController,
          });

          return KeyboardActions(
            autoScroll: false,
            config: IHSUtil.setKeyboardActionsConfigBar(actions),
            child: ReactiveForm(
              formGroup: form,
              child: SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    // 健診日
                    _buildDateField(
                      context,
                      _state,
                      notifier,
                      dateController,
                    ),
                    const SizedBox(height: 24),
                    // 妊娠週数
                    _buildWeekRow(
                      notifier,
                      weekController,
                      dayController,
                    ),
                    const SizedBox(height: 24),
                    // 体重
                    _buildWeightField(
                      notifier,
                      weightController,
                    ),
                    const SizedBox(height: 24),
                    Text(
                      '健診結果',
                      style: IHSTextStyle.small,
                    ),
                    const SizedBox(height: 8),
                    DecoratedBox(
                      decoration: const BoxDecoration(
                        color: IHSColors.white,
                        border: Border.symmetric(
                          horizontal: BorderSide(
                            color: IHSColors.black800,
                          ),
                        ),
                      ),
                      child: SelectListView(
                        map: inputData.selectedItem,
                        onTap: (type, value) {
                          notifier.onChangedSelectedItem(
                            type,
                            value: value,
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 24),
                    // メモ
                    _buildMemoField(
                      notifier,
                      memoController,
                      memoFocusNode,
                    ),
                    const SizedBox(height: 32),
                    checkupModel == null
                        ? _buildNewRegisterButton(
                            context,
                            form,
                            notifier,
                            checkupModel,
                          )
                        : _buildUpdateButtons(
                            context,
                            form,
                            _state,
                            notifier,
                            checkupModel,
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

  // 新規登録ボタン
  Widget _buildNewRegisterButton(
    BuildContext context,
    FormGroup form,
    PregnantHealthCheckInputNotifier notifier,
    CheckupModel? checkupModel,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 128,
          child: IHSButton(
            '登録',
            type: IHSButtonType.primary,
            onPressed: () {
              FocusScope.of(context).unfocus();
              _onTapSave(context, form, notifier, checkupModel);
            },
          ),
        ),
      ],
    );
  }

  // 削除/更新ボタン
  Widget _buildUpdateButtons(
    BuildContext context,
    FormGroup form,
    PregnantHealthCheckInputState state,
    PregnantHealthCheckInputNotifier notifier,
    CheckupModel? checkupModel,
  ) {
    return Row(
      children: [
        const SizedBox(width: 24),
        Expanded(
          child: IHSButton(
            '削除',
            type: IHSButtonType.gray,
            onPressed: () {
              FocusScope.of(context).unfocus();
              _onTapDelete(context, form, state, notifier, checkupModel);
            },
          ),
        ),
        const SizedBox(width: 24),
        Expanded(
          child: IHSButton(
            '修正',
            type: IHSButtonType.primary,
            onPressed: () {
              FocusScope.of(context).unfocus();
              _onTapSave(context, form, notifier, checkupModel);
            },
          ),
        ),
        const SizedBox(width: 24),
      ],
    );
  }

  // 登録or更新ボタン押下
  void _onTapSave(
    BuildContext context,
    FormGroup form,
    PregnantHealthCheckInputNotifier notifier,
    CheckupModel? checkupModel,
  ) {
    form.markAllAsTouched();
    if (!form.valid) {
      IHSUtil.showSnackBar(msg: IHSTexts.validateError);
      return;
    }

    notifier.onTapRegister(
      checkupId: checkupModel?.checkupId,
      onSuccess: () {
        IHSUtil.showSnackBar(
          msg: checkupModel == null ? '健診結果を登録しました' : '健診結果を更新しました',
        );
        Navigator.of(context).pop();
      },
      onFailure: (msg) {
        IHSUtil.showSnackBar(msg: msg);
      },
    );
  }

  // 削除ボタン押下
  void _onTapDelete(
    BuildContext context,
    FormGroup form,
    PregnantHealthCheckInputState state,
    PregnantHealthCheckInputNotifier notifier,
    CheckupModel? checkupModel,
  ) {
    form.markAllAsTouched();
    if (!form.valid) {
      return;
    }
    final dateStr = state.inputData.date!.yyyymmdd;
    IHSDialog(
      context: context,
      title: '$dateStrの健診記録を\n削除します。\nよろしいですか？',
      okStr: '削除する',
      okButtonType: IHSButtonType.gray,
      cancelStr: 'キャンセル',
      cancelButtonType: IHSButtonType.primary,
      onTap: (_) {
        notifier.onTapDelete(
          checkupId: checkupModel?.checkupId,
          onSuccess: () {
            IHSUtil.showSnackBar(msg: '健診結果を削除しました');
            Navigator.of(context).pop();
          },
          onFailure: (msg) {
            IHSUtil.showSnackBar(msg: msg);
          },
        );
      },
    ).showAlert();
  }

  // 健診日の入力フィールド
  Widget _buildDateField(
    BuildContext context,
    PregnantHealthCheckInputState state,
    PregnantHealthCheckInputNotifier notifier,
    FormControl<String> controller,
  ) {
    return ValidateDatePickTextField(
      state.inputData.date,
      title: '健診日',
      isRequired: true,
      controller: controller,
      onChanged: notifier.onChangedDateField,
      lastYear: DatePickerConstants.currentYear,
    );
  }

  /// 妊娠週数の入力フィールド
  Widget _buildWeekRow(
    PregnantHealthCheckInputNotifier notifier,
    FormControl<String> weekController,
    FormControl<String> dayController,
  ) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Text(
            '妊娠週数',
            style: IHSTextStyle.small,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ValidateTextField(
                    width: 72,
                    type: ValidateTextFieldType.week,
                    textAlign: TextAlign.center,
                    controller: weekController,
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    canDecimalInput: false,
                    onChanged: (value) {
                      notifier.onChangedWeekField(value);
                    },
                  ),
                  const SizedBox(width: 8),
                  Padding(
                    padding: const EdgeInsets.only(top: 28),
                    child: Text('週', style: IHSTextStyle.small),
                  ),
                ],
              ),
              const SizedBox(width: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ValidateTextField(
                    width: 72,
                    type: ValidateTextFieldType.day,
                    textAlign: TextAlign.center,
                    controller: dayController,
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    canDecimalInput: false,
                    onChanged: (value) => notifier.onChangedDayField(value),
                  ),
                  const SizedBox(width: 8),
                  Padding(
                    padding: const EdgeInsets.only(top: 28),
                    child: Text('日', style: IHSTextStyle.small),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// 体重の入力フィールド
  Widget _buildWeightField(
    PregnantHealthCheckInputNotifier notifier,
    FormControl<String> controller,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ValidateTextField(
          title: '体重',
          hintText: IHSTexts.bodyHint,
          type: ValidateTextFieldType.pregnantWeight,
          width: 112,
          controller: controller,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          canDecimalInput: true,
          onChanged: (value) => notifier.onChangedWeightField(value),
        ),
        const SizedBox(width: 8),
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Text('kg', style: IHSTextStyle.small),
        ),
      ],
    );
  }

  // メモの入力フィールド
  Widget _buildMemoField(
    PregnantHealthCheckInputNotifier notifier,
    TextEditingController controller,
    FocusNode focusNode,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'メモ、その他の疾患について。',
          style: IHSTextStyle.small,
        ),
        const SizedBox(height: 8),
        MultilineTextField(
          controller: controller,
          focusNode: focusNode,
          hintText: '自由に入力してください。',
          minLines: 4,
          onChanged: (value) {
            notifier.onChangedMemoField(value);
          },
        ),
      ],
    );
  }
}
