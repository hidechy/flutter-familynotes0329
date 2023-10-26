import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../util/page_navigator.dart';
import '../../../util/util.dart';
import '../../component/ihs_button/type.dart';
import '../../component/ihs_button/widget.dart';
import '../../component/main_layout/widget.dart';
import '../../component/prefix_text/widget.dart';
import '../../component/validate_date_pick_text_field/widget.dart';
import '../../component/validate_text_field/type.dart';
import '../../component/validate_text_field/widget.dart';
import '../../style/constants.dart';
import '../../style/text_style.dart';
import '../../style/texts.dart';
import '../root/widget.dart';
import 'notifier.dart';

/// 胎児登録画面（新規登録で使用）
class BabyInputPage extends ConsumerWidget {
  const BabyInputPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(babyInputStateProvider);
    final notifier = ref.watch(babyInputStateProvider.notifier);
    final scrollController = ScrollController();

    final form = FormGroup({
      ValidateTextFieldType.nickname.name: state.nameController!,
      ValidateTextFieldType.date.name: state.scheduledBirthdayController!,
    });

    return MainLayout(
      title: '胎児情報',
      headerPressed: IHSUtil.getScrollTopFunction(scrollController),
      showDrawer: false,
      body: ReactiveForm(
        formGroup: form,
        child: SingleChildScrollView(
          controller: scrollController,
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Column(
            children: [
              PrefixText(
                content: IHSTexts.canChangeLater,
                prefixStyle: IHSTextStyle.small,
                contentStyle: IHSTextStyle.small,
              ),
              const SizedBox(height: 24),
              // 名前
              _buildNameField(
                notifier,
                state.nameController!,
              ),
              const SizedBox(height: 24),
              // 出産予定日
              _buildScheduledDateField(
                notifier,
                state.scheduledBirthdayController!,
                state.inputData.scheduledBirthday,
              ),
              const SizedBox(height: 32),
              _buildRegisterArea(notifier, form, context),
            ],
          ),
        ),
      ),
    );
  }

  /// 名前の入力フィールド
  Widget _buildNameField(
    BabyInputNotifier notifier,
    FormControl<String> controller,
  ) {
    return ValidateTextField(
      controller: controller,
      title: '名前（ニックネーム）',
      onChanged: notifier.onChangedNameField,
      hintText: 'あかちゃん',
      type: ValidateTextFieldType.nickname,
      isRequired: true,
    );
  }

  /// 出産予定日の入力フィールド
  Widget _buildScheduledDateField(
    BabyInputNotifier notifier,
    FormControl<String> controller,
    DateTime? scheduledDate,
  ) {
    return ValidateDatePickTextField(
      scheduledDate,
      title: '出産予定日',
      controller: controller,
      onChanged: notifier.onChangedDateField,
      firstYear: DatePickerConstants.currentYear,
      isRequired: true,
    );
  }

  Widget _buildRegisterArea(
    BabyInputNotifier notifier,
    FormGroup form,
    BuildContext context,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 143,
          child: IHSButton(
            '登録',
            type: IHSButtonType.primary,
            onPressed: () {
              form.markAllAsTouched();
              if (form.valid) {
                notifier.onTapRegister(
                  onSuccess: () {
                    IHSUtil.showSnackBar(msg: 'アカウントを作成しました');
                    // ルートへ
                    PageNavigator.navigatePage(
                      context,
                      const RootPage(),
                      type: PageNavigator.typeRemoveUntil,
                    );
                  },
                  onFailure: (msg) {
                    IHSUtil.showSnackBar(msg: msg);
                  },
                );
              }
            },
          ),
        ),
        const SizedBox(height: 24),
        SizedBox(
          width: 143,
          child: IHSButton(
            'キャンセル',
            type: IHSButtonType.gray,
            onPressed: () {
              Navigator.of(context).pop();
              return;
            },
          ),
        ),
      ],
    );
  }
}
