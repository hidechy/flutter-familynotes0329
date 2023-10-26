import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/data/model/checkup_list/model.dart';
import '/extension/string.dart';
import '/view/component/gradation_layout/widget.dart';
import '/view/component/ihs_button/type.dart';
import '/view/component/ihs_button/widget.dart';
import '/view/style/text_style.dart';
import '../../../util/page_navigator.dart';
import '../../../util/util.dart';
import '../../component/record_list/widget.dart';
import '../pregnant_health_check_input/widget.dart';
import 'notifier.dart';

/// 妊婦健診入力選択画面
class PregnantHealthCheckSelectPage extends ConsumerWidget {
  const PregnantHealthCheckSelectPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(pregnantHealthCheckSelectProvider);
    final scrollController = ScrollController();

    return GradationLayout(
      title: '妊婦健診入力',
      headerPressed: IHSUtil.getScrollTopFunction(scrollController),
      showDrawer: false,
      reload: () {
        ref.refresh(pregnantHealthCheckSelectProvider);
      },
      body: SingleChildScrollView(
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
                _pushToHealthCheckInput(context, null);
              },
            ),
            const SizedBox(height: 32),
            Row(
              children: [
                Text(
                  state.checkupList.list.isNotEmpty ? '記録一覧' : '',
                  style: IHSTextStyle.medium,
                ),
              ],
            ),
            const SizedBox(height: 24),
            RecordListView(
              records: state.checkupList.list
                  .map(
                    (e) => Record(
                      date: e.checkupDay.toDateTime(
                        DateFormatType.yyyymmddLine,
                      ),
                    ),
                  )
                  .toList(),
              onTap: (index, record) {
                _pushToHealthCheckInput(
                  context,
                  state.checkupList.list[index],
                );
              },
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  void _pushToHealthCheckInput(
      BuildContext context, CheckupModel? checkupModel) {
    PageNavigator.navigatePage(
        context, PregnantHealthCheckInputPage(checkupModel: checkupModel));
  }
}
