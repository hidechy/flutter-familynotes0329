import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../style/text_style.dart';
import '../../../notifier.dart';
import '../../../state.dart';

class ChildGraphPeriodPulldownItem extends ConsumerWidget {
  const ChildGraphPeriodPulldownItem({
    super.key,
    required this.period,
  });

  final ChildGrapthPreriod period;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(childGraphGraphStateProvider.notifier);

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        notifier
          ..onTapPeriod(period)
          ..togglePulldownVisible();
      },
      child: Container(
        height: 48,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DefaultTextStyle(
              style: IHSTextStyle.small,
              child: Row(
                children: [
                  Text(period.label),
                  Text(
                    period.periodLabel,
                    style: IHSTextStyle.xSmall,
                  ),
                ],
              ),
            ),
            if (period == ChildGrapthPreriod.first)
              const Icon(
                Icons.arrow_drop_down,
                size: 32,
              ),
          ],
        ),
      ),
    );
  }
}
