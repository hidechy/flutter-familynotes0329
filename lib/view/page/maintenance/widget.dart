import 'package:family_notes/provider/app/notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../gen/assets.gen.dart';
import '../../../util/page_navigator.dart';
import '../../service/navigation.dart';
import '../../style/colors.dart';
import '../../style/text_style.dart';
import '../splash/widget.dart';

class MaintenancePage extends ConsumerWidget {
  const MaintenancePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(appStateProvider, (previousState, newState) async {
      if (previousState == const AppState.maintenanceOn() &&
          newState == const AppState.maintenanceOff()) {
        await PageNavigator.navigatePage(
          NavigationService.navigatorKey.currentContext!,
          const SplashPage(),
          type: PageNavigator.typeRemoveUntil,
        );
      }
    });
    return Scaffold(
      backgroundColor: IHSColors.pink50,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Assets.images.maintenance,
              width: 100,
            ),
            const SizedBox(height: 32),
            Text(
              'メンテナンス中です',
              style: IHSTextStyle.large.copyWith(
                color: IHSColors.pink500,
              ),
            ),
            const SizedBox(height: 32),
            Text(
              '現在システムメンテナンスを 実施しております。',
              style: IHSTextStyle.small,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
