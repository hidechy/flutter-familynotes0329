import 'package:family_notes/view/component/base_app_bar/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../page/error/widget.dart';
import '../../style/colors.dart';
import '../drawer_menu/widget.dart';

class MainLayout extends ConsumerWidget {
  const MainLayout({
    super.key,
    required this.body,
    this.title,
    this.backgroundColor = Colors.white,
    this.showAppBar = true,
    this.showDrawer = true,
    this.automaticallyImplyLeading = true,
    this.padding = const EdgeInsets.symmetric(horizontal: 16),
    this.headerPressed,
    this.reload,
  });

  final String? title;
  final Widget body;
  final Color backgroundColor;
  final bool showAppBar;
  final bool showDrawer;
  final bool automaticallyImplyLeading;
  final EdgeInsets padding;
  final void Function()? headerPressed;
  final void Function()? reload;

  EdgeInsets get margin =>
      const EdgeInsets.symmetric(vertical: 24, horizontal: 16);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final errorState = ref.watch(networkErrorStateProvider);
    final errorNotifier = ref.watch(networkErrorStateProvider.notifier);
    return Stack(
      children: [
        Scaffold(
          backgroundColor: IHSColors.pink100,
          appBar: showAppBar
              ? BaseAppBar(
                  title: title,
                  automaticallyImplyLeading: automaticallyImplyLeading,
                  headerPressed: headerPressed,
                )
              : null,
          body: SafeArea(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: padding,
              margin: margin,
              child: body,
            ),
          ),
          endDrawer: (showAppBar && showDrawer) ? dispDrawer(context) : null,
        ),
        if (errorState)
          ErrorPage(
            onPress: () async {
              errorNotifier.update((state) => false);
              if (reload != null) {
                reload!();
              }
            },
          )
      ],
    );
  }

  Widget dispDrawer(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: IHSColors.yellow50,
      ),
      child: const DrawerMenu(),
    );
  }
}
