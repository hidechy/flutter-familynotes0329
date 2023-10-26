import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../provider/child/notifier.dart';
import '../../../provider/child/state.dart';
import '../../../util/page_navigator.dart';
import '../../../util/util.dart';
import '../../component/gradation_layout/widget.dart';
import '../../component/ihs_button/type.dart';
import '../../component/ihs_button/widget.dart';
import '../../component/record_list/widget.dart';
import '../../style/colors.dart';
import '../../style/text_style.dart';
import '../child_health_check_input/state.dart';
import '../child_health_check_input/widget.dart';
import 'health_check_select_list/widget.dart';
import 'health_check_select_tile/widget.dart';
import 'notifier.dart';

/// 乳幼児健診の選択画面
class ChildHealthCheckSelectPage extends ConsumerWidget {
  const ChildHealthCheckSelectPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(childHealthCheckSelectProvider);
    final notifier = ref.read(childHealthCheckSelectProvider.notifier);
    final _showHealthCheckList = state.showHealthCheckList;
    final scrollController = ScrollController();

    return Stack(
      children: [
        GradationLayout(
          title: '乳幼児健診入力',
          headerPressed: IHSUtil.getScrollTopFunction(scrollController),
          showDrawer: false,
          reload: () {
            ref.refresh(childHealthCheckSelectProvider);
          },
          body: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                const SizedBox(height: 16),
                Text(
                  '入力する記録を選択',
                  style: IHSTextStyle.medium.copyWith(
                    color: IHSColors.pink500,
                  ),
                ),
                const SizedBox(height: 32),
                Text(
                  '受診された健診名をリストから\n選択してください。',
                  textAlign: TextAlign.center,
                  style: IHSTextStyle.small,
                ),
                const SizedBox(height: 32),
                const HealthCheckSelectTile(),
                const SizedBox(height: 32),
                IHSButton(
                  '登録画面へ',
                  type: IHSButtonType.primary,
                  onPressed: () {
                    final _inputData = state.inputData;
                    if (_inputData.selectedType != null) {
                      _toChildHealthCheckInputPage(
                        context,
                        inputData: _inputData,
                      );
                      return;
                    }
                    IHSUtil.showSnackBar(msg: '健診名を選択してください。');
                  },
                ),
                const SizedBox(height: 32),
                Row(
                  children: [
                    Text(
                      state.checkupHistory.list.isNotEmpty ? '記録一覧' : '',
                      style: IHSTextStyle.medium,
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                RecordListView(
                  records: state.checkupHistory.list
                      .map(
                        (e) => Record(
                          date: e.checkupDay,
                          title: e.checkUpShortName,
                        ),
                      )
                      .toList(),
                  onTap: (index, record) async {
                    final _childCheckupHistory =
                        state.checkupHistory.list[index];

                    final selectedChildId =
                        (ref.read(selectedChildStateProvider)
                                as SelectedChildStateLoaded)
                            .childId;

                    // idに該当する健診履歴を編集画面に送る
                    await notifier.fetchHistory(
                      childCheckupRecordId: _childCheckupHistory.childCheckupId,
                      childId: selectedChildId,
                      onSuccess: (ChildHealthCheckInputData _history) {
                        _toChildHealthCheckInputPage(
                          context,
                          inputData: _history,
                        );
                      },
                      onFailure: (msg) {
                        IHSUtil.showSnackBar(msg: msg);
                      },
                    );
                  },
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
        if (_showHealthCheckList) const ChildHealthCheckSelectList()
      ],
    );
  }
}

void _toChildHealthCheckInputPage(
  BuildContext context, {
  required ChildHealthCheckInputData inputData,
}) {
  PageNavigator.navigatePage(
    context,
    ChildHealthCheckInputPage(inputData: inputData),
  );
}
