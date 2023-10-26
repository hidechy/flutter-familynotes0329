import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../util/page_navigator.dart';
import '../../../util/util.dart';
import '../../component/gradation_layout/widget.dart';
import '../../component/ihs_button/type.dart';
import '../../component/ihs_button/widget.dart';
import '../../component/record_list/widget.dart';
import '../../style/text_style.dart';
import '../pregnant_dental_check_input/widget.dart';
import 'notifier.dart';
import 'type.dart';

/// 妊婦歯科健診入力選択画面
class PregnantDentalCheckSelectPage extends ConsumerWidget {
  const PregnantDentalCheckSelectPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(pregnantDentalCheckSelectProvider);
    final scrollController = ScrollController();

    return GradationLayout(
      title: '歯科健診入力',
      headerPressed: IHSUtil.getScrollTopFunction(scrollController),
      showDrawer: false,
      reload: () {
        ref.refresh(pregnantDentalCheckSelectProvider);
      },
      body: state.map(
        loading: (_) => const SizedBox(),
        loaded: (loadedState) {
          final records = loadedState.list;

          return SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                const SizedBox(height: 16),
                Text(
                  '新規で健診結果を記録する場合は、\n下のボタンをタップしてください。',
                  style: IHSTextStyle.small,
                ),
                const SizedBox(height: 32),
                IHSButton(
                  '登録画面へ',
                  type: IHSButtonType.primary,
                  onPressed: () {
                    _pushToDentalCheckInput(
                      context,
                      const PregnantDentalCheckInputType.new(),
                    );
                  },
                ),
                if (records.isNotEmpty) ...[
                  const SizedBox(height: 32),
                  Row(
                    children: [
                      Text(
                        '記録一覧',
                        style: IHSTextStyle.medium,
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  RecordListView(
                    records: records
                        .map(
                          (e) => Record(date: e.checkupDay),
                        )
                        .toList(),
                    onTap: (index, record) {
                      _pushToDentalCheckInput(
                        context,
                        PregnantDentalCheckInputType.edit(
                          motherDentalCheckupRecordId: records[index].motherDentalCheckupRecordId,
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                ],
              ],
            ),
          );
        },
      ),
    );
  }

  void _pushToDentalCheckInput(
    BuildContext context,
    PregnantDentalCheckInputType type,
  ) {
    PageNavigator.navigatePage(
      context,
      PregnantDentalCheckInputPage(inputType: type),
    );
  }
}
