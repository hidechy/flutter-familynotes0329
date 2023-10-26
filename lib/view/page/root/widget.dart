import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/view/page/login/widget.dart';
import '../../../provider/user/notifier.dart';
import '../bottom_bar/widget.dart';
import '../child_book_select/widget.dart';

class RootPage extends StatefulHookConsumerWidget {
  const RootPage({super.key});

  @override
  RootPageState createState() => RootPageState();
}

class RootPageState extends ConsumerState<RootPage> {
  @override
  Widget build(BuildContext context) {
    final userState = ref.watch(userStateProvider);

    return userState.map(
      init: (_) => throw Exception('SplashPageで認証状態を判定してから遷移してください'),
      unauthenticated: (_) => LoginPage(),
      authenticated: (state) {
        final selectedChildId = state.selectedChildId;
        if (selectedChildId == null) {
          return const ChildBookSelectPage(showDrawer: false);
        }

        return const BottomBarPage();
      },
    );
  }
}
