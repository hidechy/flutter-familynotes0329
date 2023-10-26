import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../page/error/widget.dart';

class BaseLayout extends ConsumerWidget {
  const BaseLayout({super.key, required this.body, this.reload});

  final Widget body;
  final Future Function()? reload;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final errorState = ref.watch(networkErrorStateProvider);
    final errorNotifier = ref.watch(networkErrorStateProvider.notifier);
    return Stack(
      children: [
        body,
        if (errorState)
          ErrorPage(
            onPress: () async {
              errorNotifier.update((state) => false);
              if (reload != null) {
                await reload!();
              }
            },
          )
      ],
    );
  }
}
