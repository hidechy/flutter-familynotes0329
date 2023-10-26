import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../style/colors.dart';
import '../../../style/text_style.dart';
import '../notifier.dart';

class SelectViewList extends ConsumerWidget {
  const SelectViewList({
    super.key,
    required this.idx,
    required this.dataList,
    required this.dataCtl,
  });

  final int idx;
  final List<String> dataList;
  final VaccineDoneInputNotifier dataCtl;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(vaccineDoneInputProvider);

    //プルダウンから値が選択されている場合、値を消去するために、リストの冒頭にブランクを設定
    if (state.inputDate?.selectItemList[idx] != '') {
      dataList.insert(0, '');
    }

    final dataCount = dataList.length;
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemCount: dataCount,
      itemBuilder: (context, index) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          dataCtl
            ..onChangedItem(idx, index)
            ..changeExpanded(-1);
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(
                height: 1,
                color: IHSColors.black800,
              ), //区切り線
              const SizedBox(height: 16),
              Text(
                dataList[index],
                style: IHSTextStyle.small,
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
