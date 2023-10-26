import 'package:flutter/material.dart';

import '../../../style/colors.dart';
import '../select_list_item/widget.dart';
import '../state.dart';

/// 健診結果を選択するコンポーネント
class SelectListView extends StatelessWidget {
  const SelectListView({
    super.key,
    required this.map,
    required this.onTap,
  });

  final Map<PregnantHealthCheckInputListItemType, bool> map;
  final Function(PregnantHealthCheckInputListItemType, bool) onTap;

  List<PregnantHealthCheckInputListItemType> get types => [
        PregnantHealthCheckInputListItemType.noProblem,
        PregnantHealthCheckInputListItemType.threatenedMiscarriage,
        PregnantHealthCheckInputListItemType.hyperTensionSyndrome,
        PregnantHealthCheckInputListItemType.gestationalDiabetes,
        PregnantHealthCheckInputListItemType.anemia,
        PregnantHealthCheckInputListItemType.others,
      ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: types.length,
      itemBuilder: (context, index) {
        final type = types[index];
        final selected = map[type] ?? false;

        return SelectListItem(
          type: type,
          selected: selected,
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
