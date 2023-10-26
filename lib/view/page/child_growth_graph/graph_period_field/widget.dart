import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../style/colors.dart';
import '../../../style/text_style.dart';
import '../notifier.dart';

class ChildGraphPeriodField extends ConsumerWidget {
  const ChildGraphPeriodField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(childGraphGraphStateProvider);
    final notifier = ref.read(childGraphGraphStateProvider.notifier);
    final selectedPeriod = state.selectedChildGrapthPreriod;

    return GestureDetector(
      onTap: notifier.togglePulldownVisible,
      child: Container(
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: IHSColors.white,
          border: Border.all(color: IHSColors.black800, width: 1.5),
          borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  selectedPeriod.label,
                  style: IHSTextStyle.small,
                ),
                Text(
                  selectedPeriod.periodLabel,
                  style: IHSTextStyle.xSmall,
                ),
              ],
            ),
            const Icon(Icons.arrow_drop_down, size: 32),
          ],
        ),
      ),
    );
  }
}
