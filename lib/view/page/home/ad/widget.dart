import 'package:flutter/material.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../util/launch.dart';
import '../../../style/constants.dart';

/// ホーム画面の広告ウィジェット
class HomeAdBanner extends StatelessWidget {
  const HomeAdBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        UrlLaunch.launchInBrowser(context, IHSConstants.advertisingUrl);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Image.asset(
          Assets.images.advertisingBanner.path,
        ),
      ),
    );
  }
}
