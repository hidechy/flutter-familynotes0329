import 'package:family_notes/view/style/constants.dart';
import 'package:family_notes/view/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../provider/event/event.dart';
import '../../../util/util.dart';
import '../../component/child_list_item/state.dart';
import '../../component/ihs_button/type.dart';
import '../../component/ihs_button/widget.dart';
import '../../component/ihs_dialog/widget.dart';
import '../../component/main_layout/widget.dart';
import '../../component/prefix_text/widget.dart';
import '../../component/validate_date_pick_text_field/widget.dart';
import '../../component/validate_text_field/type.dart';
import '../../component/validate_text_field/widget.dart';
import '../../style/texts.dart';
import 'notifier.dart';
import 'state.dart';

/// 胎児情報編集画面
class BabyEditPage extends ConsumerWidget {
  const BabyEditPage({super.key, this.targetBabyItem});

  final ChildListItemDataBaby? targetBabyItem;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(babyInputStateProvider(targetBabyItem));
    final notifier = ref.watch(babyInputStateProvider(targetBabyItem).notifier);

    final form = FormGroup({
      ValidateTextFieldType.nickname.name: state.nameController!,
      ValidateTextFieldType.date.name: state.scheduledBirthdayController!,
    });

    final scrollController = ScrollController();

    return MainLayout(
      title: '胎児情報',
      headerPressed: IHSUtil.getScrollTopFunction(scrollController),
      showDrawer: false,
      reload: () {
        ref.refresh(babyInputStateProvider(targetBabyItem));
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
              const SizedBox(height: 24),
              // 出産予定日
              _buildScheduledDateField(
                context,
                state,
                notifier,
                state.scheduledBirthdayController!,
              ),
              const SizedBox(height: 32),
              _buildRegisterArea(context, state, notifier, form),
            ],
          ),
        ),
      ),
    );
  }

  /// 名前の入力フィールド
  Widget _buildNameField(
    BabyEditNotifier notifier,
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
    BuildContext context,
    BabyEditState state,
    BabyEditNotifier notifier,
    FormControl<String> controller,
  ) {
    return ValidateDatePickTextField(
      state.inputData.scheduledBirthday,
      title: '出産予定日',
      controller: controller,
      isRequired: true,
      firstYear: DatePickerConstants.currentYear,
      onChanged: notifier.onChangedDateField,
    );
  }

  Widget _buildRegisterArea(
    BuildContext context,
    BabyEditState state,
    BabyEditNotifier notifier,
    FormGroup form,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 143,
          child: IHSButton(
            targetBabyItem == null ? '登録' : '修正',
            type: IHSButtonType.primary,
            onPressed: () {
              form.markAllAsTouched();
              if (form.valid) {
                notifier.onTapRegister(
                  childId: targetBabyItem?.childId,
                  onSuccess: () {
                    Event.fire(Event.eventKeyNotifierBaby);
                    IHSUtil.showSnackBar(
                      msg: targetBabyItem == null ? '胎児を追加しました' : '胎児情報を更新しました',
                    );
                    Navigator.of(context).pop();
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
            targetBabyItem == null ? 'キャンセル' : '削除',
            type: IHSButtonType.gray,
            onPressed: () {
              if (targetBabyItem == null) {
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
                    childId: targetBabyItem?.childId,
                    onSuccess: () {
                      IHSUtil.showSnackBar(msg: 'お子さまを削除しました');
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
      ],
    );
  }
}
