import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/gen/assets.gen.dart';
import '/provider/user/notifier.dart';
import '/util/util.dart';
import '/view/style/colors.dart';
import '../../../app.dart';
import '../../../data/local/local_client.dart';
import '../../../data/page/page.dart';
import '../../../extension/context.dart';
import '../../../provider/app/notifier.dart';
import '../../../provider/config/notifier.dart';
import '../../../util/page_navigator.dart';
import '../../component/base_layout/widget.dart';
import '../../style/constants.dart';
import '../error/widget.dart';
import '../root/widget.dart';

///  認証が通っている時だけ、各種バージョンのチェックを行う
///  バージョンチェック後、下記のようにページ遷移
///  母子手帳未選択の場合: BookSelectPage
///  ログイン済みの場合：　BottomBarPage
class SplashPage extends HookConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appNotifier = ref.watch(appStateProvider.notifier);
    final configStateNotifier = ref.watch(appConfigProvider.notifier);
    final userStateNotifier = ref.watch(userStateProvider.notifier);
    final splashLogoSize = context.screenWidth * IHSConstants.splashLogoRatio;

    useEffect(() {
      Future.microtask(() async {
        await _initialize(
          context,
          userStateNotifier,
          configStateNotifier,
          appNotifier,
          ref,
        );
      });

      return null;
    }, []);

    return BaseLayout(
      reload: () async {
        await _initialize(
          context,
          userStateNotifier,
          configStateNotifier,
          appNotifier,
          ref,
        );
      },
      body: Scaffold(
        body: ColoredBox(
          color: IHSColors.pink100,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: Image.asset(
                  Assets.images.splash.path,
                  width: splashLogoSize,
                ),
              ),
              Positioned(
                bottom: 24,
                child: Column(
                  children: [
                    Image.asset(
                      Assets.images.offerBySuita.path,
                    ),
                    const SizedBox(height: 64),
                    Image.asset(
                      Assets.images.supportedKowaLogo.path,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> toRootPage(BuildContext context) async {
  Future.delayed(const Duration(seconds: 2), () {
    final pageType = syncTmpParams[LocalTmpKeyType.pageType];
    if (pageType != null &&
        (syncPrefInt[LocalKeyType.userId] ?? 0) > 0 &&
        (syncPrefInt[LocalKeyType.selectedChildId] ?? 0) > 0) {
      debugPrint('Splash FCM');
      AppPage.createPageStack(pageType);
      syncTmpParams[LocalTmpKeyType.pageType] = null;
    } else {
      debugPrint('Splash Normal');
      PageNavigator.navigatePage(
        context,
        const RootPage(),
        type: PageNavigator.typePushReplacement,
      );
    }
  });
}

Future<void> _initialize(
    BuildContext context,
    UserStateNotifier userStateNotifier,
    AppConfigStateNotifier configStateNotifier,
    AppStateNotifier appNotifier,
    WidgetRef ref) async {
  await configStateNotifier.fetch();

  await userStateNotifier.loadAuthenticationStatus(onFailure: (msg) {
    if (msg.isEmpty) {
      return;
    }

    IHSUtil.showSnackBar(msg: msg);
  });
  final checkVersion = await myAppState.showDialogIfNeeded(callBySplash: true);
  if (checkVersion) {
    configChecked = true;
    final appMode = appNotifier.getMode;
    // アプリの状態がメンテナンスOffでない場合はRootPageに遷移させない
    if (appMode is! AppStateMaintenanceOff) {
      return;
    }
  } else {
    // ストアから戻ってきた際に、RootPageに遷移させるのを防ぐため
    return;
  }

  // ネットワークエラー状態の場合RootPageに遷移させない
  if (!ref.read(networkErrorStateProvider)) {
    // スプラッシュページが終わったら、インジケーターを表示できるようにする
    ref.read(appStateProvider.notifier).showIndicator();
    await toRootPage(context);
  }
}
