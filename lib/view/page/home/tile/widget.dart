import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../extension/context.dart';
import '../../../../gen/assets.gen.dart';
import '../../../style/colors.dart';
import '../../../style/text_style.dart';
import 'type.dart';

// ホーム画面に表示するタイル
class HomeTile extends StatelessWidget {
  const HomeTile({
    super.key,
    required this.type,
    required this.onTap,
  });

  final HomeTileType type;
  final Function(HomeTileType) onTap;

  @override
  Widget build(BuildContext context) {
    final heightFactor = context.getDeviceHeightFactor();
    final tileWidth = context.screenWidth / 2 - 36;

    return GestureDetector(
      onTap: () {
        onTap(type);
      },
      child: Container(
        height: 100 * heightFactor,
        width: tileWidth,
        margin: EdgeInsets.only(bottom: 16 * heightFactor),
        decoration: BoxDecoration(
          color: IHSColors.white,
          border: Border.all(
            color: IHSColors.black200,
            width: 1.5,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            homeMenuIcon(type: type, heightFactor: heightFactor),
            const SizedBox(height: 4),
            Text(
              type.label,
              style: IHSTextStyle.small.copyWith(
                color: IHSColors.black800,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget homeMenuIcon({
    required HomeTileType type,
    required double heightFactor,
  }) {
    switch (type) {
      case HomeTileType.healthCheckup:
        return SvgPicture.asset(
          Assets.images.homeHealthCheckup,
          width: _calculateSize(size: 64, heightFactor: heightFactor),
          height: _calculateSize(size: 32, heightFactor: heightFactor),
        );
      case HomeTileType.vaccination:
        return SvgPicture.asset(
          Assets.images.homeVaccination,
          width: _calculateSize(size: 40, heightFactor: heightFactor),
          height: _calculateSize(size: 32, heightFactor: heightFactor),
        );
      case HomeTileType.physicalGrowthCurve:
        return SvgPicture.asset(
          Assets.images.homePhysicalGrowthCurve,
          width: _calculateSize(size: 40, heightFactor: heightFactor),
          height: _calculateSize(size: 32, heightFactor: heightFactor),
        );
      case HomeTileType.prevention:
        return SvgPicture.asset(
          Assets.images.homePrevention,
          width: _calculateSize(size: 24, heightFactor: heightFactor),
          height: _calculateSize(size: 32, heightFactor: heightFactor),
        );
      case HomeTileType.checkSheet:
        return SvgPicture.asset(
          Assets.images.homeCheckSheet,
          width: _calculateSize(size: 32, heightFactor: heightFactor),
          height: _calculateSize(size: 40, heightFactor: heightFactor),
        );
      case HomeTileType.prenatalCare:
        return SvgPicture.asset(
          Assets.images.homePrenatalCare,
          width: _calculateSize(size: 48, heightFactor: heightFactor),
          height: _calculateSize(size: 32, heightFactor: heightFactor),
        );
      case HomeTileType.prenatalCareDental:
        return SvgPicture.asset(
          Assets.images.homePrenatalCareDental,
          width: _calculateSize(size: 32, heightFactor: heightFactor),
          height: _calculateSize(size: 32, heightFactor: heightFactor),
        );
      case HomeTileType.weightGraph:
        return SvgPicture.asset(
          Assets.images.homeWeightGraph,
          width: _calculateSize(size: 32, heightFactor: heightFactor),
          height: _calculateSize(size: 32, heightFactor: heightFactor),
        );
    }
  }

  double _calculateSize({
    required double size,
    required double heightFactor,
  }) {
    return size * heightFactor;
  }
}
