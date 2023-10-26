import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../style/colors.dart';
import '../../../style/text_style.dart';
import '../notifier.dart';
import '../type.dart';

class SelectResult extends ConsumerWidget {
  const SelectResult({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(childHealthCheckInputProvider.notifier);
    final _result = ref.watch(childHealthCheckInputProvider
        .select((s) => s.mapOrNull(loaded: (s) => s.inputData.result)));
    final checkList = ref.watch(checkTypeListProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '健診結果',
          style: IHSTextStyle.small.copyWith(
            color: IHSColors.black800,
          ),
        ),
        const SizedBox(height: 8),
        DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(
              color: IHSColors.black800,
            ),
            color: IHSColors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ListTileTheme(
              dense: true,
              child: ExpansionTile(
                key: Key(_result == null ? '' : _result.label),
                title: Text(
                  (_result == null) ? '' : _result.label,
                  style: IHSTextStyle.small,
                ),
                trailing: const Icon(
                  Icons.arrow_drop_down,
                  size: 30,
                ),
                collapsedTextColor: IHSColors.black800,
                collapsedIconColor: IHSColors.black900,
                textColor: IHSColors.black800,
                iconColor: IHSColors.black900,
                children: <Widget>[_expansionItem(notifier, checkList)],
              ),
            ),
          ),
        ),
      ],
    );
  }

  //プルダウンのアイテム
  ListView _expansionItem(ChildHealthCheckInputNotifier notifier,
      List<ChildCheckUpResultType> checkList) {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemCount: checkList.length,
      itemBuilder: (context, index) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          notifier.selectCheckResult(checkList[index]);
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(
                height: 1,
                color: IHSColors.black800,
              ),
              const SizedBox(height: 13),
              Text(
                checkList[index].label,
                style: IHSTextStyle.small,
              ),
              const SizedBox(height: 13),
            ],
          ),
        ),
      ),
    );
  }
}
