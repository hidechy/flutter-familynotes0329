import 'package:flutter/material.dart';

import '../../../../style/colors.dart';
import '../../state.dart';
import 'tile/widget.dart';

class ChildGraphPeriodPulldown extends StatelessWidget {
  const ChildGraphPeriodPulldown({
    super.key,
    required this.topMargin,
  });

  final double topMargin;
  List<ChildGrapthPreriod> get childGrapthPreriodList => [
        ChildGrapthPreriod.first,
        ChildGrapthPreriod.second,
        ChildGrapthPreriod.third,
      ];

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Container(
      width: deviceSize.width,
      height: deviceSize.height,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Column(
        children: [
          SizedBox(height: topMargin),
          DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(
                color: IHSColors.black800,
                width: 1.5,
              ),
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: ListView.separated(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: childGrapthPreriodList.length,
              itemBuilder: (context, index) {
                return ChildGraphPeriodPulldownItem(
                  period: childGrapthPreriodList[index],
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  height: 1,
                  thickness: 1,
                  indent: 16,
                  endIndent: 16,
                  color: IHSColors.black400,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
