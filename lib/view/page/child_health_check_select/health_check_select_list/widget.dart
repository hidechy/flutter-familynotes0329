import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../component/base_layout/widget.dart';
import '../../../style/colors.dart';
import '../health_check_select_list_tile/widget.dart';
import '../notifier.dart';

class ChildHealthCheckSelectList extends ConsumerWidget {
  const ChildHealthCheckSelectList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceSize = MediaQuery.of(context).size;
    final childCheckUpTypes = ref.watch(childHealthCheckSelectProvider.select((s) => s.childCheckupTypes.list));

    final notifier = ref.read(childHealthCheckSelectProvider.notifier);

    return BaseLayout(
      reload: () async {
        ref.refresh(childHealthCheckSelectProvider);
      },
      body: GestureDetector(
        onTap: notifier.toggleShowHealthCheckList,
        child: Container(
          alignment: Alignment.center,
          width: deviceSize.width,
          height: deviceSize.height,
          color: IHSColors.black900.withOpacity(0.7),
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: childCheckUpTypes.length,
            itemBuilder: (context, index) {
              return HealthCheckSelectListTile(type: childCheckUpTypes[index]);
            },
          ),
        ),
      ),
    );
  }
}
