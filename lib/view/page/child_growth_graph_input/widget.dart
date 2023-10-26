import 'package:family_notes/view/style/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../data/model/child_growth_record_list/model.dart';
import '../../../extension/date_time.dart';

import '../../../util/util.dart';
import '../../component/gradation_layout/widget.dart';
import '../../component/ihs_button/type.dart';
import '../../component/ihs_button/widget.dart';
import '../../component/ihs_dialog/widget.dart';

import '../../component/validate_date_pick_text_field/widget.dart';
import '../../component/validate_text_field/type.dart';
import '../../component/validate_text_field/widget.dart';
import '../../style/colors.dart';
import '../../style/text_style.dart';
import '../../style/texts.dart';
import 'notifier.dart';
import 'state.dart';
import 'weight_segment_view/widget.dart';

/// 身体発育曲線入力画面
class ChildGrowthGraphInputPage extends ConsumerStatefulWidget {
  const ChildGrowthGraphInputPage({
    super.key,
    // 入力データ(新規登録ならnull)
    this.record,
  });

  final ChildGrowthRecord? record;

  @override
  ChildGrowthGraphInputPageState createState() =>
      ChildGrowthGraphInputPageState();
}

class ChildGrowthGraphInputPageState
    extends ConsumerState<ChildGrowthGraphInputPage> {
  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    final state = ref.watch(childWeightGraphInputStateProvider(widget.record));
    final notifier = ref.watch(
      childWeightGraphInputStateProvider(widget.record).notifier,
    );

    return GradationLayout(
      title: '身体発育曲線',
      headerPressed: IHSUtil.getScrollTopFunction(scrollController),
      showDrawer: false,
      body: ReactiveForm(
        formGroup: state.form,
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Text(
                '発育入力',
                style: IHSTextStyle.medium.copyWith(
                  color: IHSColors.pink500,
                ),
              ),
              const SizedBox(height: 24),
              // 測定日
              _buildDateField(
                state.inputData.date,
                notifier,
                state.dateController,
              ),
              const SizedBox(height: 24),
              // 身長
              _buildHeightField(
                notifier,
                state.heightController,
              ),
              const SizedBox(height: 32),
              // 体重
              _buildWeightField(
                state.inputData.weightType,
                notifier,
                state.gramsController,
                state.kilogramsController,
              ),
              const SizedBox(height: 24),
              // 頭囲
              _buildHeadField(notifier, state.headController),
              const SizedBox(height: 24),
              // 胸囲
              _buildChestField(notifier, state.chestController),
              const SizedBox(height: 32),
              _buildRegisterArea(state, notifier, state.form),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  // 測定日の入力フィールド
  Widget _buildDateField(
    DateTime? date,
    ChildGrowthGraphInputNotifier notifier,
    FormControl<String> controller,
  ) {
    return ValidateDatePickTextField(
      date,
      title: '測定日',
      isRequired: true,
      controller: controller,
      lastYear: DatePickerConstants.currentYear,
      onChanged: notifier.onChangedDateField,
    );
  }

  /// 身長の入力フィールド
  Widget _buildHeightField(
    ChildGrowthGraphInputNotifier notifier,
    FormControl<String> controller,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 112,
          child: ValidateTextField(
            title: '身長',
            type: ValidateTextFieldType.height,
            controller: controller,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            canDecimalInput: true,
            hintText: IHSTexts.bodyHint,
            onChanged: (control) {
              notifier.onChangedHeightField(control);
            },
          ),
        ),
        const SizedBox(width: 8),
        _cmText()
      ],
    );
  }

  /// 体重の入力フィールド
  Widget _buildWeightField(
    WeightType weightType,
    ChildGrowthGraphInputNotifier notifier,
    FormControl<String> gramscontroller,
    FormControl<String> kilogramscontroller,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // kgとgで動的にバリデーションtypeを切り替えるとエラーメッセージが表示されないので、
        // kgとgで別々のTextFiledとして表示させている
        // 体重(kg)入力用
        Visibility(
          visible: WeightType.kg == weightType,
          child: SizedBox(
            width: 112,
            child: ValidateTextField(
              title: '体重',
              type: ValidateTextFieldType.childKilogramsWeight,
              controller: kilogramscontroller,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              canDecimalInput: true,
              hintText: IHSTexts.bodyHint,
              onChanged: (control) {
                notifier.onChangedKilogramsField(control);
                if (control.isEmpty) {
                  notifier.onChangedGramsField('');
                }
              },
            ),
          ),
        ),
        // 体重(g)入力用
        Visibility(
          visible: WeightType.g == weightType,
          child: SizedBox(
            width: 112,
            child: ValidateTextField(
              title: '体重',
              type: ValidateTextFieldType.childGramsWeight,
              controller: gramscontroller,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              canDecimalInput: false,
              hintText: IHSTexts.gramHint,
              onChanged: (control) {
                notifier.onChangedGramsField(control);
                if (control.isEmpty) {
                  notifier.onChangedKilogramsField('');
                }
              },
            ),
          ),
        ),
        const SizedBox(width: 8),
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: WeightSegmentView(
            selectedType: weightType,
            onTap: (weightType) {
              notifier
                ..onChangedWeightType(weightType)
                ..onChangedFormGroup(weightType);
              if (WeightType.g == weightType) {
                notifier.weightConvertFromKilogramsToGrams();
              } else {
                notifier.weightConvertFromGramsToKilograms();
              }
            },
          ),
        ),
      ],
    );
  }

  /// 頭囲の入力フィールド
  Widget _buildHeadField(
    ChildGrowthGraphInputNotifier notifier,
    FormControl<String> controller,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 112,
          child: ValidateTextField(
            title: '頭囲',
            type: ValidateTextFieldType.head,
            controller: controller,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            canDecimalInput: true,
            hintText: IHSTexts.bodyHint,
            onChanged: (control) {
              notifier.onChangedHeadField(control);
            },
          ),
        ),
        const SizedBox(width: 8),
        _cmText()
      ],
    );
  }

  /// 胸囲の入力フィールド
  Widget _buildChestField(
    ChildGrowthGraphInputNotifier notifier,
    FormControl<String> controller,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 112,
          child: ValidateTextField(
            title: '胸囲',
            type: ValidateTextFieldType.chest,
            controller: controller,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            canDecimalInput: true,
            hintText: IHSTexts.bodyHint,
            onChanged: (control) {
              notifier.onChangedChestField(control);
            },
          ),
        ),
        const SizedBox(width: 8),
        _cmText()
      ],
    );
  }

  Widget _buildRegisterArea(
    ChildGrowthGraphInputState state,
    ChildGrowthGraphInputNotifier notifier,
    FormGroup form,
  ) {
    if (widget.record == null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 128,
            child: IHSButton(
              '登録',
              type: IHSButtonType.primary,
              onPressed: () {
                form.markAllAsTouched();
                if (!form.valid) {
                  return;
                }

                _onTapRegister(state, notifier);
              },
            ),
          ),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 128,
            child: IHSButton(
              '削除',
              type: IHSButtonType.gray,
              onPressed: () {
                _onTapDelete(state, notifier);
              },
            ),
          ),
          const SizedBox(width: 24),
          SizedBox(
            width: 128,
            child: IHSButton(
              '修正',
              type: IHSButtonType.primary,
              onPressed: () {
                form.markAllAsTouched();
                if (!form.valid) {
                  return;
                }

                _onTapRegister(state, notifier);
              },
            ),
          ),
        ],
      );
    }
  }

  Widget _cmText() {
    return Padding(
      padding: const EdgeInsets.only(top: 48),
      child: Text('cm', style: IHSTextStyle.small),
    );
  }

  void _onTapRegister(
    ChildGrowthGraphInputState state,
    ChildGrowthGraphInputNotifier notifier,
  ) {
    final registCheck = notifier.registCheck();
    if (!registCheck) {
      IHSUtil.showSnackBar(msg: IHSTexts.childGrowthGraphRegistCheckError);
      return;
    }

    // 選択済み体重種類がgでなくkgの場合は、
    // apiにグラム値で渡すため表示されているキログラム値をグラム値に変換している
    if (WeightType.kg == state.inputData.weightType) {
      notifier.weightConvertFromKilogramsToGrams();
    }

    notifier.onTapRegister(
      recordId: widget.record?.recordId,
      onSuccess: () {
        IHSUtil.showSnackBar(
          msg: widget.record == null ? 'データを登録しました' : 'データを更新しました',
        );
        Navigator.of(context).pop();
      },
      onFailure: (msg) {
        if (msg.isEmpty) {
          return;
        }

        IHSUtil.showSnackBar(msg: msg);
      },
    );
  }

  void _onTapDelete(
    ChildGrowthGraphInputState state,
    ChildGrowthGraphInputNotifier notifier,
  ) {
    final dateStr = state.inputData.date!.yyyymmdd;
    IHSDialog(
      context: context,
      title: '$dateStrの記録を削除します。\nよろしいですか？',
      okStr: '削除する',
      okButtonType: IHSButtonType.gray,
      cancelStr: 'キャンセル',
      cancelButtonType: IHSButtonType.primary,
      onTap: (_) {
        notifier.onTapDelete(
          recordId: widget.record!.recordId,
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
