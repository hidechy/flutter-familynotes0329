import 'package:family_notes/extension/date_time.dart';
import 'package:family_notes/view/component/multiline_text_field/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:keyboard_actions/keyboard_actions.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../util/util.dart';
import '../../component/gradation_layout/widget.dart';
import '../../component/ihs_button/type.dart';
import '../../component/ihs_button/widget.dart';
import '../../component/ihs_dialog/widget.dart';
import '../../component/validate_date_pick_text_field/widget.dart';
import '../../component/validate_text_field/type.dart';
import '../../component/validate_text_field/widget.dart';
import '../../style/colors.dart';
import '../../style/constants.dart';
import '../../style/text_style.dart';
import '../pregnant_dental_check_select/type.dart';
import 'notifier.dart';
import 'select_list_view/widget.dart';
import 'state.dart';

/// 妊婦歯科健診入力画面
class PregnantDentalCheckInputPage extends ConsumerStatefulWidget {
  const PregnantDentalCheckInputPage({
    super.key,
    required this.inputType,
  });

  final PregnantDentalCheckInputType inputType;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PregnantDentalCheckInputPageState();
}

class _PregnantDentalCheckInputPageState
    extends ConsumerState<PregnantDentalCheckInputPage> {
  final memoFocusNode = FocusNode();

  @override
  void dispose() {
    memoFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(pregnantDentalCheckInputProvider(widget.inputType));
    final notifier =
        ref.read(pregnantDentalCheckInputProvider(widget.inputType).notifier);
    final scrollController = ScrollController();

    return GradationLayout(
      title: '歯科健診入力',
      headerPressed: IHSUtil.getScrollTopFunction(scrollController),
      showDrawer: false,
      body: state.map(
        loading: (_) => const SizedBox(),
        loaded: (loadedState) {
          final actions = [
            IHSUtil.setKeyboardActionsItem(memoFocusNode),
          ];
          final isInputTypeNew =
              widget.inputType is PregnantDentalCheckInputNew;
          final _dateController = loadedState.dateController!;
          final _weekController = loadedState.weekController!;
          final memoController = loadedState.inputData.memoController!;
          final form = FormGroup({
            ValidateTextFieldType.date.name: _dateController,
            ValidateTextFieldType.week.name: _weekController,
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
                      loadedState,
                      notifier,
                      _dateController,
                    ),
                    const SizedBox(height: 24),
                    // 妊娠週数
                    _buildWeekRow(
                      context,
                      loadedState,
                      notifier,
                      _weekController,
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
                        selectedType: loadedState.inputData.type,
                        onTap: (type, _) {
                          notifier.onChangedSelectedItem(type);
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
                    isInputTypeNew
                        ? _RegisterButtonArea(
                            form: form,
                            notifier: notifier,
                          )
                        : _EditButtonArea(
                            form: form,
                            notifier: notifier,
                            state: loadedState,
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

  // 健診日の入力フィールド
  Widget _buildDateField(
    BuildContext context,
    PregnantDentalCheckInputLoaded state,
    PregnantDentalCheckInputNotifier notifier,
    FormControl<String> controller,
  ) {
    return ValidateDatePickTextField(
      state.inputData.date,
      controller: controller,
      title: '健診日',
      isRequired: true,
      onChanged: notifier.onChangedDateField,
      lastYear: DatePickerConstants.currentYear,
    );
  }

  /// 妊娠週数の入力フィールド
  Widget _buildWeekRow(
    BuildContext context,
    PregnantDentalCheckInputLoaded state,
    PregnantDentalCheckInputNotifier notifier,
    FormControl<String> controller,
  ) {
    Color _pregnantWeekColor() {
      return state.inputData.isAfterBirth
          ? IHSColors.black400
          : IHSColors.black800;
    }

    Color _afterBornColor() {
      final _week = state.inputData.week;
      return (_week == null || _week == '')
          ? IHSColors.black800
          : IHSColors.black400;
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            '妊娠週数',
            style: IHSTextStyle.small.copyWith(color: _pregnantWeekColor()),
          ),
        ),
        const SizedBox(width: 16),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ValidateTextField(
              width: 72,
              type: ValidateTextFieldType.week,
              textAlign: TextAlign.center,
              controller: controller,
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
              canDecimalInput: false,
              borderColor: _pregnantWeekColor(),
              onChanged: (value) {
                notifier
                  ..onChangedWeekField(value)
                  ..onChangedPostpartem(isAfterBirth: false);
              },
            ),
            const SizedBox(width: 8),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Text(
                '週',
                style: IHSTextStyle.small.copyWith(
                  color: _pregnantWeekColor(),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 24),
        GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            final _isAfterBoon = state.inputData.isAfterBirth;
            notifier
              ..onChangedPostpartem(isAfterBirth: !_isAfterBoon)
              ..onChangedWeekField('');
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Row(
              children: [
                Text(
                  '産後',
                  style: IHSTextStyle.small.copyWith(
                    color: _afterBornColor(),
                  ),
                ),
                const SizedBox(width: 16),
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: state.inputData.isAfterBirth
                          ? IHSColors.black800
                          : IHSColors.black400,
                      width: state.inputData.isAfterBirth ? 2 : 1,
                    ),
                    borderRadius: BorderRadius.circular(
                      state.inputData.isAfterBirth ? 3 : 0,
                    ),
                  ),
                  child: AbsorbPointer(
                    child: Checkbox(
                      activeColor: IHSColors.white,
                      checkColor: state.inputData.isAfterBirth
                          ? IHSColors.black800
                          : IHSColors.white,
                      fillColor: MaterialStateProperty.resolveWith(
                        (states) => IHSColors.white,
                      ),
                      autofocus: true,
                      value: state.inputData.isAfterBirth,
                      onChanged: null,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

// メモの入力フィールド
  Widget _buildMemoField(
    PregnantDentalCheckInputNotifier notifier,
    TextEditingController controller,
    FocusNode focusNode,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'メモ、または処置などについて。',
          style: IHSTextStyle.small,
        ),
        const SizedBox(height: 8),
        MultilineTextField(
          controller: controller,
          focusNode: focusNode,
          hintText: '自由に記入してください。',
          hintStyle: IHSTextStyle.small.copyWith(
            color: IHSColors.black200,
          ),
          minLines: 4,
          onChanged: notifier.onChangedMemoField,
        ),
      ],
    );
  }
}

class _RegisterButtonArea extends StatelessWidget {
  const _RegisterButtonArea({
    required this.form,
    required this.notifier,
  });

  final FormGroup form;
  final PregnantDentalCheckInputNotifier notifier;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 128,
        child: IHSButton(
          '登録',
          type: IHSButtonType.primary,
          onPressed: () async {
            FocusScope.of(context).unfocus();
            form.markAllAsTouched();
            if (!form.valid) {
              return;
            }
            await notifier.onTapSave(
              onSuccess: () {
                IHSUtil.showSnackBar(msg: 'データを登録しました');
                Navigator.pop(context);
              },
              onFailure: (msg) {
                if (msg.isEmpty) {
                  return;
                }

                IHSUtil.showSnackBar(msg: msg);
              },
            );
          },
        ),
      ),
    );
  }
}

class _EditButtonArea extends StatelessWidget {
  const _EditButtonArea(
      {required this.form, required this.notifier, required this.state});

  final FormGroup form;
  final PregnantDentalCheckInputNotifier notifier;
  final PregnantDentalCheckInputLoaded state;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 24),
        Expanded(
          child: IHSButton(
            '削除',
            type: IHSButtonType.gray,
            onPressed: () async {
              await _onTapDelete(context);
            },
          ),
        ),
        const SizedBox(width: 24),
        Expanded(
          child: IHSButton(
            '修正',
            type: IHSButtonType.primary,
            onPressed: () async {
              FocusScope.of(context).unfocus();
              form.markAllAsTouched();
              if (!form.valid) {
                return;
              }

              await notifier.onTapSave(
                onSuccess: () {
                  IHSUtil.showSnackBar(msg: 'データを更新しました');
                  Navigator.pop(context);
                },
                onFailure: (msg) {
                  if (msg.isEmpty) {
                    return;
                  }

                  IHSUtil.showSnackBar(msg: msg);
                },
              );
            },
          ),
        ),
        const SizedBox(width: 24),
      ],
    );
  }

  // 削除ボタン押下
  Future<void> _onTapDelete(BuildContext context) async {
    final dateStr = state.inputData.date!.yyyymmdd;
    await IHSDialog(
      context: context,
      title: '$dateStrの健診記録を\n削除します。\nよろしいですか？',
      okStr: '削除する',
      okButtonType: IHSButtonType.gray,
      cancelStr: 'キャンセル',
      cancelButtonType: IHSButtonType.primary,
      onTap: (_) async {
        FocusScope.of(context).unfocus();
        await notifier.onTapDelete(
          onSuccess: () {
            IHSUtil.showSnackBar(msg: 'データを削除しました');
            Navigator.of(context).pop();
          },
          onFailure: (msg) {
            if (msg.isEmpty) {
              return;
            }

            IHSUtil.showSnackBar(msg: msg);
          },
        );
      },
    ).showAlert();
  }
}
