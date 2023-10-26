import 'package:family_notes/type/gender.dart';
import 'package:family_notes/view/component/gender_required_text/widget.dart';
import 'package:family_notes/view/component/validate_child_gender_segment_field/widget.dart';
import 'package:family_notes/view/component/validate_text_field/child_gedner_type.dart';
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
import 'state.dart';

/// お子さま登録画面（アカウント作成時、子供の新規登録で使用）
class ChildInputPage extends ConsumerWidget {
  const ChildInputPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(childInputStateProvider);
    final notifier = ref.watch(childInputStateProvider.notifier);

    final form = FormGroup({
      ValidateTextFieldType.nickname.name: state.nameController!,
      ValidateChildGenderType.name: state.genderController!,
      ValidateTextFieldType.date.name: state.birthdayController!,
    });

    // Appbarをタップした時に画面トップに移動する用
    final scrollController = ScrollController();

    return MainLayout(
      title: 'お子さま情報',
      headerPressed: IHSUtil.getScrollTopFunction(scrollController),
      showDrawer: false,
      body: ReactiveForm(
        formGroup: form,
        child: SingleChildScrollView(
          controller: scrollController,
          padding: const EdgeInsets.symmetric(vertical: 16),
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
              const SizedBox(height: 16),
              // 性別
              _buildGenderField(
                context,
                state,
                notifier,
                state.genderController!,
              ),
              const SizedBox(height: 16),
              // 出産予定日
              _buildBirthdayField(
                context,
                state,
                notifier,
                state.birthdayController!,
              ),
              const SizedBox(height: 32),
              _buildRegisterArea(
                context,
                state,
                notifier,
                form,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// 名前の入力フィールド
  Widget _buildNameField(
    ChildInputNotifier notifier,
    FormControl<String> controller,
  ) {
    return ValidateTextField(
      type: ValidateTextFieldType.nickname,
      title: '名前（ニックネーム）',
      isRequired: true,
      controller: controller,
      onChanged: notifier.onChangedNameField,
    );
  }

  /// 性別の選択フィールド
  Widget _buildGenderField(
    BuildContext context,
    ChildInputState state,
    ChildInputNotifier notifier,
    FormControl<Gender?> control,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const GenderRequiredText(),
        const SizedBox(height: 8),
        ValidateChildGenderSegmentField(
          isOnPressed: state.isShowGenderValidateMessage,
          control: control,
          onTap: notifier.onChangedGender,
        ),
      ],
    );
  }

  /// 生年月日の入力フィールド
  Widget _buildBirthdayField(
    BuildContext context,
    ChildInputState state,
    ChildInputNotifier notifier,
    FormControl<String> controller,
  ) {
    return ValidateDatePickTextField(
      state.inputData.birthday,
      title: '生年月日',
      isRequired: true,
      controller: controller,
      lastYear: DatePickerConstants.currentYear,
      onChanged: notifier.onChangedDateField,
    );
  }

  Widget _buildRegisterArea(
    BuildContext context,
    ChildInputState state,
    ChildInputNotifier notifier,
    FormGroup form,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedButton(
          title: '登録',
          buttonType: IHSButtonType.primary,
          onPressed: () {
            notifier.showGenderValidateMessage();
            form.markAllAsTouched();
            if (!form.valid) {
              return;
            }

            notifier.onTapRegister(
              onSuccess: () {
                notifier.hideGenderValidateMessage();
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
          },
        ),
        const SizedBox(height: 24),
        SizedButton(
          title: 'キャンセル',
          buttonType: IHSButtonType.gray,
          onPressed: () {
            notifier.onTapCancel();
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }
}

class SizedButton extends StatelessWidget {
  const SizedButton({
    super.key,
    required this.title,
    required this.buttonType,
    required this.onPressed,
  });

  final String title;
  final IHSButtonType buttonType;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 144,
      child: IHSButton(
        title,
        type: buttonType,
        onPressed: onPressed,
      ),
    );
  }
}
