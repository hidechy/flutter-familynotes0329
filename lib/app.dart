import 'dart:async';
import 'dart:io';

import 'package:family_notes/data/model/consent/model.dart';
import 'package:family_notes/provider/app/notifier.dart';
import 'package:family_notes/provider/child/notifier.dart';
import 'package:family_notes/provider/config/notifier.dart';
import 'package:family_notes/provider/event/event.dart';
import 'package:family_notes/provider/user/notifier.dart';
import 'package:family_notes/util/launch.dart';
import 'package:family_notes/util/page_navigator.dart';
import 'package:family_notes/util/util.dart';
import 'package:family_notes/view/component/ihs_dialog/widget.dart';
import 'package:family_notes/view/page/agreement_content/type.dart';
import 'package:family_notes/view/page/bottom_bar/widget.dart';
import 'package:family_notes/view/page/home/body/agreement_dialog/widget.dart';
import 'package:family_notes/view/page/home/body/notifier.dart';
import 'package:family_notes/view/page/maintenance/widget.dart';
import 'package:family_notes/view/page/splash/version_check.dart';
import 'package:family_notes/view/style/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'data/local/local_client.dart';
import 'data/service/firebase/messaging.dart';
import 'view/page/splash/widget.dart';
import 'view/service/navigation.dart';
import 'view/style/colors.dart';
import 'view/style/text_style.dart';

late MyAppState myAppState;

class MyApp extends StatefulHookConsumerWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends ConsumerState<MyApp> with WidgetsBindingObserver {
  late StreamSubscription subscription;
  AppLifecycleState _appLifecycleState = AppLifecycleState.resumed;
  bool isOnceBackground = false;

  @override
  void initState() {
    myAppState = this;
    final appNotifier = ref.read(appStateProvider.notifier);
    //プッシュ通知タップに対応するため
    ref.read(firebaseMessagingServiceProvider).initialize(
      onLoadedToken: (token) {
        debugPrint('FCM Token: $token');
        LocalClient().set(LocalKeyType.deviceToken, token);
      },
    );
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    subscription = eventBus.on<Event>().listen((event) {
      switch (event.key) {
        case Event.eventKeyNotifierBaby:
        case Event.eventKeyNotifierChild:
          ref.read(selectedChildStateProvider.notifier).fetch(
              childId: syncPrefInt[LocalKeyType.selectedChildId]!,
              childType: syncPrefString[LocalKeyType.selectedChildType]!,
              onFailure: (msg) {
                IHSUtil.showSnackBar(msg: msg);
              });
          break;
        case Event.eventKeyNotifierTimeout:
          break;
        case Event.exentKeyNotifierSocket:
          break;
        case Event.eventKeyNotifierMaintenance:
          // 二重で遷移させないため
          if (appNotifier.getMode is AppStateMaintenanceOn) {
            return;
          }

          appNotifier.setMaintenanceMode();
          PageNavigator.navigatePage(
            NavigationService.navigatorKey.currentContext!,
            const MaintenancePage(),
            type: PageNavigator.typeRemoveUntil,
          );
          break;
        case Event.eventKeyNotifierHomeMode:
          ref.read(homeBodyPageStateProvider.notifier).onTap();
          break;
        case Event.eventKeyToStore:
          UrlLaunch.launchInBrowser(
            NavigationService.navigatorKey.currentContext!,
            Platform.isAndroid
                ? IHSConstants.storeUrlAndroid
                : IHSConstants.storeUrliOS,
          );
          break;
      }
    });
    subscription.resume();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
          child: child!,
        );
      },
      navigatorKey: NavigationService.navigatorKey,
      title: 'すいろぐ',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          titleTextStyle: IHSTextStyle.medium.copyWith(
            color: IHSColors.pink500,
          ),
          centerTitle: true,
        ),
      ),
      home: const SplashPage(),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ja'),
      ],
    );
  }

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    switch (state) {
      // 非アクティブ
      case AppLifecycleState.inactive:
        break;
      // 停止
      case AppLifecycleState.paused:
        isOnceBackground = true;
        break;
      // 再開
      case AppLifecycleState.resumed:
        final appNotifier = ref.read(appStateProvider.notifier);
        final versionCheck = ref.read(versionCheckProvider);
        final userState = ref.watch(userStateProvider);

        if (appNotifier.getMode is AppStateMaintenanceOn) {
          appNotifier.releaseMaintenanceMode();
        }

        // ダイアログ表示されている際にバックグラウンド状態->再開するとダイアログが二重で表示されるのを防ぐため
        if ([AppLifecycleState.inactive, AppLifecycleState.paused]
                .contains(_appLifecycleState) &&
            versionCheck.isHideDialog) {
          await showDialogIfNeeded();

          // 認証がとっていないときは、起動しない
          if (userState is UserStateAuthenticated) {
            // 再同意の確認
            await showAgreementDialog();
          }
        }
        break;
      // 破棄
      case AppLifecycleState.detached:
        break;
    }
    _appLifecycleState = state;
  }

  Future<bool> showDialogIfNeeded({bool callBySplash = false}) async {
    if (!callBySplash) {
      final configStateNotifier = ref.watch(appConfigProvider.notifier);
      await configStateNotifier.fetch();
    }

    final versionCheck = ref.read(versionCheckProvider);
    final checkAppVersion =
        await ref.read(versionCheckProvider).checkAppVersion();
    // ダイアログで表示する文字列
    const appAlertMessage = '新しいバージョンがリリースされました。\nアプリをアップデートしてください。';
    if (!checkAppVersion) {
      versionCheck.isHideDialog = false;
      await IHSDialog(
        context: NavigationService.navigatorKey.currentContext!,
        title: appAlertMessage,
        okStr: 'ストアへ',
        cancelAble: false,
        onTap: (context) {
          versionCheck.isHideDialog = true;
          Event.fire(Event.eventKeyToStore);
        },
      ).showAlert();
    }

    if (!configChecked && checkAppVersion && isOnceBackground) {
      configChecked = true;
      unawaited(
        PageNavigator.navigatePage(
          NavigationService.navigatorKey.currentContext!,
          const SplashPage(),
        ),
      );
    }

    return checkAppVersion;
  }

  Future<void> selectChild() async {
    await ref.read(userStateProvider.notifier).onSelectedBook(
          childId: syncPrefInt[LocalKeyType.selectedChildId]!,
          childType: syncPrefString[LocalKeyType.selectedChildType]!,
          onFailure: (msg) {
            IHSUtil.showSnackBar(msg: msg);
          },
        );
  }

  Future<void> showAgreementDialog() async {
    debugPrint('agreement call');
    await ref.read(homeBodyPageStateProvider.notifier).checkConsent(
      onSuccess: (consentList) async {
        debugPrint('agreement onSuccess');
        for (final e in consentList) {
          final type = AgreementContentType.values.firstWhere(
            (element) => element.value == e.type,
          );

          Timer(
            const Duration(milliseconds: 500),
            () async {
              await showDialog(
                barrierDismissible: false,
                barrierColor: IHSColors.black800.withOpacity(0.3),
                context: NavigationService.navigatorKey.currentContext!,
                builder: (context) {
                  return AgreementDialog(
                    label: e.label,
                    type: type,
                    onTap: (consentModel) async {
                      await ref
                          .watch(homeBodyPageStateProvider.notifier)
                          .updateConsent(
                            type: consentModel.type,
                            consentId: consentModel.id,
                          );
                      unawaited(
                        PageNavigator.navigatePage(
                          context,
                          const BottomBarPage(),
                        ),
                      );
                    },
                  );
                },
              );
            },
          );
        }
      },
    );
  }
}
