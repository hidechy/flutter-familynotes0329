import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../provider/event/event.dart';
import '../../../type/gender.dart';
import '../../../util/util.dart';
import '../../component/child_list_item/state.dart';
import '../../component/gender_required_text/widget.dart';
import '../../component/ihs_button/type.dart';
import '../../component/ihs_button/widget.dart';
import '../../component/ihs_dialog/widget.dart';
import '../../component/main_layout/widget.dart';
import '../../component/prefix_text/widget.dart';
import '../../component/validate_child_gender_segment_field/widget.dart';
import '../../component/validate_date_pick_text_field/widget.dart';
import '../../component/validate_text_field/child_gedner_type.dart';
import '../../component/validate_text_field/type.dart';
import '../../component/validate_text_field/widget.dart';
import '../../style/constants.dart';
import '../../style/text_style.dart';
import '../../style/texts.dart';
import 'notifier.dart';
import 'state.dart';

/// お子さま情報編集画面
class ChildEditPage extends ConsumerWidget {
  const ChildEditPage({
    super.key,
    // 入力データ(新規登録ならnull)
    this.targetChildItem,
  });

  final ChildListItemDataChild? targetChildItem;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(childInputStateProvider(targetChildItem));
    final notifier =
        ref.watch(childInputStateProvider(targetChildItem).notifier);

    final form = FormGroup({
      ValidateTextFieldType.nickname.name: state.nameController!,
      ValidateChildGenderType.name: state.genderController!,
      ValidateTextFieldType.date.name: state.birthdayController!,
    });

    final scrollController = ScrollController();

    return MainLayout(
      title: 'お子さま情報',
      headerPressed: IHSUtil.getScrollTopFunction(scrollController),
      showDrawer: false,
      reload: () {
        ref.refresh(childInputStateProvider(targetChildItem));
      },
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
              const SizedBox(height: 16),
              // 性別
              _buildGenderField(state, notifier, state.genderController!),
              const SizedBox(height: 16),
              // 出産予定日
              _buildScheduledDateField(
                state,
                notifier,
                state.birthdayController!,
              ),
              const SizedBox(height: 32),
              _buildRegisterArea(context, notifier, form),
            ],
          ),
        ),
      ),
    );
  }

  /// 名前の入力フィールド
  Widget _buildNameField(
    ChildEditNotifier notifier,
    FormControl<String> controller,
  ) {
    return ValidateTextField(
      controller: controller,
      title: '名前（ニックネーム）',
      onChanged: (value) {
        notifier.onChangedNameField(value);
      },
      type: ValidateTextFieldType.nickname,
      isRequired: true,
    );
  }

  /// 性別の選択フィールド
  Widget _buildGenderField(
    ChildEditState state,
    ChildEditNotifier notifier,
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
          onTap: (value) {
            notifier.onChangedGender(value);
          },
        ),
      ],
    );
  }

  /// 生年月日の入力フィールド
  Widget _buildScheduledDateField(
    ChildEditState state,
    ChildEditNotifier notifier,
    FormControl<String> controller,
  ) {
    return ValidateDatePickTextField(
      state.inputData.birthday,
      title: '生年月日',
      controller: controller,
      lastYear: DatePickerConstants.currentYear,
      onChanged: notifier.onChangedDateField,
      isRequired: true,
    );
  }

  Widget _buildRegisterArea(
      BuildContext context, ChildEditNotifier notifier, FormGroup form) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 143,
          child: IHSButton(
            targetChildItem == null ? '登録' : '修正',
            type: IHSButtonType.primary,
            onPressed: () {
              notifier.showGenderValidateMessage();
              form.markAllAsTouched();
              if (!form.valid) {
                return;
              }

              notifier.onTapRegister(
                childId: targetChildItem?.childId,
                onSuccess: () {
                  notifier.hideGenderValidateMessage();
                  Event.fire(Event.eventKeyNotifierChild);
                  IHSUtil.showSnackBar(
                    msg: targetChildItem == null
                        ? 'お子さまを追加しました'
                        : 'お子さま情報を更新しました',
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
            },
          ),
        ),
        const SizedBox(height: 24),
        SizedBox(
          width: 143,
          child: IHSButton(
            targetChildItem == null ? 'キャンセル' : '削除',
            type: IHSButtonType.gray,
            onPressed: () {
              if (targetChildItem == null) {
                Navigator.of(context).pop();
                return;
              }

              IHSDialog(
                context: context,
                title: 'データを削除します。\nよろしいですか？',
                okStr: '削除する',
                cancelStr: 'キャンセル',
                okButtonType: IHSButtonType.gray,
                cancelButtonType: IHSButtonType.primary,
                onTap: (_) {
                  notifier.onTapDelete(
                    childId: targetChildItem?.childId,
                    onSuccess: () {
                      IHSUtil.showSnackBar(msg: 'お子さまを削除しました');
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
            },
          ),
        ),
      ],
    );
  }
}
