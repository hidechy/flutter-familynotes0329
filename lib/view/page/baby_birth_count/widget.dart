import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '/util/util.dart';
import '/view/component/gradation_layout/widget.dart';
import '/view/component/ihs_button/type.dart';
import '/view/component/ihs_button/widget.dart';
import '/view/page/baby_birth_count/notifier.dart';
import '/view/style/colors.dart';
import '/view/style/text_style.dart';
import '../../../util/page_navigator.dart';
import '../../component/validate_text_field/type.dart';
import '../../component/validate_text_field/widget.dart';
import '../baby_birth_input/widget.dart';
import 'button/widget.dart';
import 'type.dart';

/// 出産人数選択画面
class BabyBirthCountPage extends ConsumerWidget {
  const BabyBirthCountPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(babyBirthCountInputProvider);
    final notifier = ref.watch(babyBirthCountInputProvider.notifier);
    final _babyCountController = state.babyCountController!;
    final _form = notifier.getForm;
    final _inputData = state.inputData;
    final scrollController = ScrollController();

    return GradationLayout(
      title: '出産情報登録',
      headerPressed: IHSUtil.getScrollTopFunction(scrollController),
      showDrawer: false,
      reload: () async {
        ref.refresh(babyBirthCountInputProvider);
      },
      body: ReactiveForm(
        formGroup: _form,
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 16),
              Text(
                '出産についての登録',
                textAlign: TextAlign.center,
                style: IHSTextStyle.medium.copyWith(
                  color: IHSColors.pink500,
                ),
              ),
              const SizedBox(height: 18),
              ChildCountButton(
                'ひとり',
                selected: _inputData is BabyCountSelectDataOne,
                onTap: () {
                  notifier.onSelect(const BabyCountSelectData.one());
                },
              ),
              const SizedBox(height: 24),
              ChildCountButton(
                '双子',
                selected: _inputData is BabyCountSelectDataTwins,
                onTap: () {
                  notifier.onSelect(const BabyCountSelectData.twins());
                },
              ),
              const SizedBox(height: 24),
              FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '3つ子以上の場合',
                      style: IHSTextStyle.medium.copyWith(
                        color: IHSColors.pink500,
                      ),
                    ),
                    const SizedBox(width: 48),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ValidateTextField(
                          width: 72,
                          type: ValidateTextFieldType.birthChild,
                          controller: _babyCountController,
                          keyboardType: const TextInputType.numberWithOptions(
                              decimal: true),
                          canDecimalInput: false,
                          textAlign: TextAlign.center,
                          onChanged: (value) {
                            notifier.onSelect(
                              BabyCountSelectData.more(number: value),
                            );
                          },
                        ),
                        const SizedBox(width: 8),
                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Text(
                            'つ子',
                            style: IHSTextStyle.small,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 36),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IHSButton(
                    '登録',
                    type: IHSButtonType.primary,
                    horizontalInnerPadding: 48,
                    onPressed: () {
                      if (_inputData == null) {
                        IHSUtil.showSnackBar(
                          msg: '人数を選択してください',
                        );
                        return;
                      }
                      if (!_form.valid) {
                        return;
                      }
                      _inputData.map(
                        one: (_) => pushToInput(context, 1),
                        twins: (_) => pushToInput(context, 2),
                        more: (value) {
                          if (int.tryParse(value.number) == null) {
                            IHSUtil.showSnackBar(msg: '数字を入力してください');
                            return;
                          }
                          pushToInput(context, int.parse(value.number));
                        },
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  void pushToInput(BuildContext context, int childNumber) {
    PageNavigator.navigatePage(
      context,
      BabyBirthInputPage(
        childNumber: childNumber,
      ),
    );
  }
}
