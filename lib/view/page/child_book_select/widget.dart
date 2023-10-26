import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../provider/user/notifier.dart';
import '../../../util/util.dart';
import '../../component/child_list_item/widget.dart';
import '../../component/gradation_layout/widget.dart';

import 'notifier.dart';

/// 手帳選択画面
class ChildBookSelectPage extends ConsumerWidget {
  const ChildBookSelectPage({
    super.key,
    required this.showDrawer,
  });

  final bool showDrawer;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(childListStatusProvider);
    return GradationLayout(
      title: '手帳選択',
      automaticallyImplyLeading: false,
      showDrawer: showDrawer,
      reload: () {
        ref.refresh(childListStatusProvider);
      },
      body: state.map(
        init: (_) {
          return const SizedBox();
        },
        loaded: (state) {
          final itemList = state.itemList;
          return ListView.separated(
            padding: const EdgeInsets.only(top: 16, bottom: 24),
            shrinkWrap: true,
            itemCount: itemList.length,
            itemBuilder: (context, index) => ChildListItem(
              itemList[index],
              onTap: (itemData) {
                ref.read(userStateProvider.notifier).onSelectedBook(
                      childId: itemData.childId,
                      childType: itemData.type,
                      onFailure: (msg) {
                        IHSUtil.showSnackBar(msg: msg);
                      },
                    );
              },
            ),
            separatorBuilder: (context, index) => const SizedBox(height: 24),
          );
        },
      ),
    );
  }
}
