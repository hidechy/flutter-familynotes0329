import 'package:family_notes/view/page/vaccine_schedule/type.dart';
import 'package:family_notes/view/style/text_style.dart';
import 'package:flutter/material.dart';

import '../../../style/colors.dart';
import '../../vaccine_done_input/select_view_list/dose_type_label/widget.dart';
import '../inoculation_text/widget.dart';
import '../state.dart';

/// vaccine_listのtileコンポーネント
class VaccineListTile extends StatelessWidget {
  const VaccineListTile({
    super.key,
    required this.name,
    required this.vaccineScheduleType,
    required this.dosingType,
    required this.list,
    required this.dListType,
  });

  final String name;
  final VaccineScheduleType vaccineScheduleType;
  final String dosingType;
  final List<VaccineInoculationDate> list;
  final DataListType dListType;

  String get typeName {
    var typeStr = '定期';
    if (vaccineScheduleType == VaccineScheduleType.optional) {
      typeStr = '任意';
    }
    return typeStr;
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: IHSColors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Row(
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 5, right: 9),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: IHSColors.yellow200,
                      child: Text(
                        typeName,
                        style: IHSTextStyle.small,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DoseTypeLabel(dosingType: dosingType),
                      const SizedBox(height: 4),
                      Text(
                        name,
                        style: IHSTextStyle.small,
                      ),
                      const SizedBox(height: 16),
                      InoculationText(
                        list: list,
                        dListType: dListType,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 25,
                  color: IHSColors.black700,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
