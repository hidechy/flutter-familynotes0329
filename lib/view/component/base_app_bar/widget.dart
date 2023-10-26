import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../gen/assets.gen.dart';
import '../../style/colors.dart';
import '../../style/text_style.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BaseAppBar({
    super.key,
    required this.title,
    required this.automaticallyImplyLeading,
    this.onPressed,
    this.headerPressed,
  });

  final String? title;
  final void Function()? headerPressed;
  final bool automaticallyImplyLeading;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      iconTheme: const IconThemeData(color: IHSColors.pink400),
      title: InkWell(
        child: Text(title ?? '',
            style: IHSTextStyle.medium.copyWith(
              color: IHSColors.pink500,
            )),
        onTap: headerPressed,
      ),
      flexibleSpace: InkWell(
        onTap: headerPressed,
      ),
      automaticallyImplyLeading: automaticallyImplyLeading,
      leading: automaticallyImplyLeading ? AppBarLeadingIconButton(onPressed: onPressed) : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class AppBarLeadingIconButton extends StatelessWidget {
  const AppBarLeadingIconButton({
    super.key,
    this.onPressed,
  });

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed ?? () => Navigator.pop(context),
      icon: SvgPicture.asset(Assets.images.leftArrow),
    );
  }
}
