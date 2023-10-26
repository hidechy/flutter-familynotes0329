import 'package:flutter/material.dart';

import '../../../style/text_style.dart';
import '../state.dart';
import '../type.dart';

class InoculationText extends StatelessWidget {
  const InoculationText({
    super.key,
    required this.list,
    required this.dListType,
  });
  final List<VaccineInoculationDate> list;
  final DataListType dListType;

  @override
  Widget build(BuildContext context) {
    if (list.isEmpty) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('1回目：', style: IHSTextStyle.xSmall),
        ],
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (int i = 0; i < list.length; i++) ...{
          Text(
              makeTitle(
                idx: i,
                numberName: list[i].numberName,
                settingDate: list[i].settingDate,
              ),
              style: IHSTextStyle.xSmall),
        }
      ],
    );
  }

  String makeTitle(
      {required int idx, String? numberName, String? settingDate}) {
    final dateStr =
        settingDate == null || settingDate.isEmpty ? ' -' : settingDate;

    if (numberName == null) {
      return (idx + 1).toString() + '回目：' + dateStr;
    }
    return numberName + '：' + dateStr;
  }
}
