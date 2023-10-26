import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../style/colors.dart';
import '../../../style/text_style.dart';
import '../notifier.dart';

class HealthCheckSelectTile extends ConsumerWidget {
  const HealthCheckSelectTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(childHealthCheckSelectProvider);
    final notifier = ref.read(childHealthCheckSelectProvider.notifier);
    final _selectedType = state.inputData.selectedType;

    return GestureDetector(
      onTap: notifier.toggleShowHealthCheckList,
      child: Container(
        height: 48,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          color: IHSColors.white,
          border: Border.all(color: IHSColors.black400),
        ),
        alignment: Alignment.centerLeft,
        child: _selectedType == null
            ? const _NoSelectedTitle()
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _selectedType.checkUpName ?? '',
                    style: IHSTextStyle.small,
                  ),
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

class _NoSelectedTitle extends StatelessWidget {
  const _NoSelectedTitle();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '健診名を選択',
          style: IHSTextStyle.small,
        ),
        const Icon(
          Icons.arrow_drop_down,
          size: 32,
        ),
      ],
    );
  }
}
