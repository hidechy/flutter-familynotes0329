import 'package:flutter/material.dart';

import '../../style/colors.dart';
import 'record_item/widget.dart';

class Record {
  Record({required this.date, this.title, this.weight});

  final DateTime date;
  final String? title;
  final String? weight;
}

/// 妊婦健診入力選択画面などで使用する記録一覧
class RecordListView extends StatelessWidget {
  const RecordListView({
    super.key,
    required this.records,
    required this.onTap,
  });

  final List<Record> records;
  final Function(int, Record) onTap;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: records.isEmpty
          ? const BoxDecoration()
          : BoxDecoration(
              color: IHSColors.white,
              border: Border.all(
                color: IHSColors.black200,
              ),
            ),
      child: ListView.separated(
        padding: const EdgeInsets.all(1),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: records.length,
        itemBuilder: (context, index) {
          return RecordItem(
            date: records[index].date,
            title: records[index].title,
            weight: records[index].weight,
            onTap: () {
              onTap(index, records[index]);
            },
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            height: 1,
            thickness: 1,
            color: IHSColors.black200,
          );
        },
      ),
    );
  }
}
