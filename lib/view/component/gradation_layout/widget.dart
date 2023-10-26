import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../page/error/widget.dart';
import '../../style/colors.dart';
import '../base_app_bar/widget.dart';
import '../drawer_menu/widget.dart';

/// グラデーション背景のレイアウト（ホーム画面などで使用）
class GradationLayout extends ConsumerWidget {
  const GradationLayout({
    super.key,
    required this.body,
    this.title,
    this.showAppBar = true,
    this.showDrawer = true,
    this.automaticallyImplyLeading = true,
    this.isShowScrollbar = false,
    this.horizontalPadding = 24,
    this.headerPressed,
    this.reload,
    this.voidWithPop,
  });

  final String? title;
  final Widget body;
  final bool showAppBar;
  final bool showDrawer;
  final bool automaticallyImplyLeading;
  final bool isShowScrollbar;
  final double horizontalPadding;
  final void Function()? headerPressed;
  final void Function()? reload;
  final void Function()? voidWithPop;

  // ピンク帯のmargin
  EdgeInsets get margin => const EdgeInsets.symmetric(vertical: 16);

  EdgeInsets get padding => EdgeInsets.symmetric(
        horizontal: isShowScrollbar ? horizontalPadding + 4 : horizontalPadding,
      );

  Color get gradationColor => Colors.white;

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
                  headerPressed: headerPressed,
                  automaticallyImplyLeading: automaticallyImplyLeading,
                  onPressed: voidWithPop,
                )
              : null,
          body: SafeArea(
            child: _GradationArea(
              padding: padding,
              margin: margin,
              body: isShowScrollbar ? Scrollbar(child: body) : body,
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

class _GradationArea extends StatelessWidget {
  const _GradationArea({
    required this.padding,
    required this.margin,
    required this.body,
  });

  final EdgeInsets padding;
  final EdgeInsets margin;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset.topCenter,
          end: FractionalOffset.bottomCenter,
          colors: [
            IHSColors.white,
            IHSColors.yellow50,
          ],
          stops: [
            0.0,
            1.0,
          ],
        ),
      ),
      padding: padding,
      margin: margin,
      child: body,
    );
  }
}
