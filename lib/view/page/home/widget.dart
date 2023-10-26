import 'package:family_notes/app.dart';
import 'package:family_notes/data/local/local_client.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../provider/child/notifier.dart';
import '../../../provider/child/state.dart';
import '../../../util/util.dart';
import '../../component/gradation_layout/widget.dart';

import 'body/state.dart';
import 'body/widget.dart';

/// ホーム画面
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedChildState = ref.watch(selectedChildStateProvider);
    final scrollController = ScrollController();

    return selectedChildState.map(
      init: (_) {
        return const SizedBox();
      },
      loading: (_) {
        return const SizedBox();
      },
      loaded: (state) {
        if(state.childId != syncPrefInt[LocalKeyType.selectedChildId]){
          myAppState.selectChild();
        }
        final child = state.child;
        return GradationLayout(
          headerPressed: IHSUtil.getScrollTopFunction(scrollController),
          title: 'ホーム',
          automaticallyImplyLeading: false,
          horizontalPadding: 0,
          body: HomeBodyPage(
            scrollController: scrollController,
            initialLayout:
                child is BabyIHSChild ? HomeLayout.baby : HomeLayout.child,
            child: child,
          ),
        );
      },
    );
  }
}
