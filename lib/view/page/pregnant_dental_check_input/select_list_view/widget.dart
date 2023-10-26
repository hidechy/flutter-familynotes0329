import 'package:flutter/material.dart';

import '../../../style/colors.dart';
import '../select_list_item/widget.dart';
import '../type.dart';

/// 健診結果を選択するコンポーネント
class SelectListView extends StatelessWidget {
  const SelectListView({
    super.key,
    required this.selectedType,
    required this.onTap,
  });

  final PregnantDentalCheckInputListItemType selectedType;
  final Function(PregnantDentalCheckInputListItemType, bool) onTap;

  List<PregnantDentalCheckInputListItemType> get types => [
        PregnantDentalCheckInputListItemType.noProblem,
        PregnantDentalCheckInputListItemType.neededGuidance,
        PregnantDentalCheckInputListItemType.neededTreatment,
      ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: types.length,
      itemBuilder: (context, index) {
        final type = types[index];
        // final selected = map[type] ?? false;

        // 「問題なし」を選択している場合は他をタップ不可にする
        // if (map[PregnantDentalCheckInputListItemType.noProblem] == true) {
        //   if (type != PregnantDentalCheckInputListItemType.noProblem) {
        //     enabled = false;
        //   }
        // }
        return SelectListItem(
          type: type,
          selectedType: selectedType,
          selected: type == selectedType,
          onTap: onTap,
        );
      },
      separatorBuilder: (context, index) {
        return const Divider(
          height: 1,
          thickness: 1,
          color: IHSColors.black800,
        );
      },
    );
  }
}
