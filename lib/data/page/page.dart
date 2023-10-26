import 'dart:async';

import 'package:flutter/material.dart';

import '../../provider/event/event.dart';
import '../../util/page_navigator.dart';
import '../../view/page/bottom_bar/notifier.dart';
import '../../view/page/bottom_bar/widget.dart';
import '../../view/page/check_sheet/widget.dart';
import '../../view/page/child_growth_graph/widget.dart';
import '../../view/page/child_health_check_select/widget.dart';
import '../../view/page/information_detail/widget.dart';
import '../../view/page/life_habit_check_select/widget.dart';
import '../../view/page/pregnant_dental_check_select/widget.dart';
import '../../view/page/pregnant_health_check_select/widget.dart';
import '../../view/page/pregnant_weight_record_select/widget.dart';
import '../../view/page/setting/widget.dart';
import '../../view/page/vaccine_schedule/widget.dart';
import '../../view/service/navigation.dart';
import '../local/local_client.dart';

class AppPage {
  bool pageDebug = false;
  //1階層
  static const appPageHome = 1000;
  static const appPageNotice = 2000;
  static const appPageSetting = 3000;
  static const appPageBook = 4000;
  //HOME>子供系
  static const appPageInfantCheckup = 1001;
  static const appPageVaccine = 1002;
  static const appPageBody = 1003;
  static const appPagePreventOfDisease = 1004;
  static const appPageGrowthCheck = 1005;
  //HOME>胎児系
  static const appPageCheckupForPregnant = 1101;
  static const appPageDentalCheck = 1102;
  static const appPageGrowthGraph = 1103;

  //ページによるスタックを構築する
  static Future<void> createPageStack(int page, {int? vaccineType}) async {
    late Widget firstFragment;
    final oneLayerList = [
      appPageHome,
      appPageNotice,
      appPageSetting,
      appPageBook
    ];
    final childLayerList = [
      appPageInfantCheckup,
      appPageVaccine,
      appPageBody,
      appPagePreventOfDisease,
      appPageGrowthCheck
    ];
    final babyLayerList = [
      appPageCheckupForPregnant,
      appPageDentalCheck,
      appPageGrowthGraph
    ];

    //1階層
    if ((syncPrefInt[LocalKeyType.userId] ?? 0) > 0 &&
        oneLayerList.contains(page)) {
      switch (page) {
        case appPageHome:
        case appPageSetting:
          globalTabIndex = 0;
          break;
        case appPageNotice:
          globalTabIndex = 2;
          break;
        case appPageBook:
          globalTabIndex = 1;
          break;
      }
      firstFragment = const BottomBarPage();
      unawaited(PageNavigator.navigatePage(
          NavigationService.navigatorKey.currentContext!, firstFragment,
          type: PageNavigator.typeRemoveUntil));
      if(page == appPageSetting){
        unawaited(PageNavigator.navigatePage(
          NavigationService.navigatorKey.currentContext!, const SettingPage()));
      }
      if(page == appPageNotice && syncTmpParams[LocalTmpKeyType.pageNoticeId]! > 0){
        unawaited(PageNavigator.navigatePage(
          NavigationService.navigatorKey.currentContext!,
          InformationDetailPage(noticeId: syncTmpParams[LocalTmpKeyType.pageNoticeId]!),
        ));
      }
      return;
    }

    globalTabIndex = 0;
    firstFragment = const BottomBarPage();
    //HOME>子供系
    if ((syncPrefInt[LocalKeyType.userId] ?? 0) > 0 &&
        (syncPrefInt[LocalKeyType.selectedChildId] ?? 0) > 0 &&
        (syncPrefString[LocalKeyType.selectedChildType] == 'child') &&
        childLayerList.contains(page)) {
      late Widget secondFragment;

      switch (page) {
        case appPageInfantCheckup:
          secondFragment = const ChildHealthCheckSelectPage();
          break;
        case appPageVaccine:
          secondFragment = const VaccineSchedulePage();
          break;
        case appPageBody:
          secondFragment = ChildGrowthGraphPage();
          break;
        case appPagePreventOfDisease:
          secondFragment = const LifeHabitCheckSelectPage();
          break;
        case appPageGrowthCheck:
          secondFragment = const CheckSheetSelectPage();
          break;
      }
      debugPrint(
          'FCM Tap secondPage of 1:' + secondFragment.runtimeType.toString());
      unawaited(PageNavigator.navigatePage(
          NavigationService.navigatorKey.currentContext!, firstFragment,
          type: PageNavigator.typeRemoveUntil));
      debugPrint('FCM Tap secondPage of 2');
      unawaited(PageNavigator.navigatePage(
          NavigationService.navigatorKey.currentContext!, secondFragment));
    }

    //HOME>胎児系
    if ((syncPrefInt[LocalKeyType.userId] ?? 0) > 0 &&
        (syncPrefInt[LocalKeyType.selectedChildId] ?? 0) > 0 &&
        babyLayerList.contains(page)) {
      debugPrint('FCM Tap babyLayer');
      late Widget secondFragment;

      switch (page) {
        case appPageCheckupForPregnant:
          secondFragment = const PregnantHealthCheckSelectPage();
          break;
        case appPageDentalCheck:
          secondFragment = const PregnantDentalCheckSelectPage();
          break;
        case appPageGrowthGraph:
          secondFragment = const PregnantWeightRecordSelectPage();
          break;
      }
      unawaited(PageNavigator.navigatePage(
          NavigationService.navigatorKey.currentContext!, firstFragment,
          type: PageNavigator.typeRemoveUntil));
      if(syncPrefString[LocalKeyType.selectedChildType] == 'child'){
        Timer(const Duration(milliseconds: 1000), () {
          Event.fire(Event.eventKeyNotifierHomeMode);
        });
      }
      unawaited(PageNavigator.navigatePage(
          NavigationService.navigatorKey.currentContext!, secondFragment));
    }
  }
}
