import 'package:flutter/material.dart';

import '/view/page/home/body/state.dart';
import '../tile/type.dart';
import '../tile/widget.dart';

class HomeGrid extends StatelessWidget {
  const HomeGrid({
    super.key,
    required this.homeLayout,
    required this.onTap,
  });

  final HomeLayout homeLayout;
  final Function(HomeTileType) onTap;

  // 妊婦向けで表示するHomeTileTypeのリスト
  List<HomeTileType> get listForParent => [
        HomeTileType.prenatalCare,
        HomeTileType.prenatalCareDental,
        HomeTileType.weightGraph,
      ];

  // 子供向けで表示するHomeTileTypeのリスト
  List<HomeTileType> get listForChild => [
        HomeTileType.healthCheckup,
        HomeTileType.vaccination,
        HomeTileType.physicalGrowthCurve,
        HomeTileType.prevention,
        HomeTileType.checkSheet,
      ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceBetween,
      children: (homeLayout == HomeLayout.baby ? listForParent : listForChild)
          .map(
            (type) => HomeTile(type: type, onTap: onTap),
          )
          .toList(),
    );
  }
}
