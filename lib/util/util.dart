import 'dart:async';

import 'package:family_notes/view/service/navigation.dart';
import 'package:family_notes/view/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_actions/keyboard_actions.dart';

import '../view/component/loading_indicator/widget.dart';
import '../view/style/text_style.dart';

class IHSUtil {
  IHSUtil._();

  static void showSnackBar({required String msg}) {
    final navigatorContext = NavigationService.navigatorKey.currentContext!;
    ScaffoldMessenger.of(navigatorContext).showSnackBar(
      SnackBar(
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                msg,
                style: IHSTextStyle.small.copyWith(color: IHSColors.pink500),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
            GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(navigatorContext).hideCurrentSnackBar();
              },
              child: const Icon(
                Icons.close,
                color: IHSColors.pink400,
              ),
            ),
          ],
        ),
        duration: const Duration(seconds: 5),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: IHSColors.pink500),
          borderRadius: BorderRadius.circular(50),
        ),
        backgroundColor: IHSColors.pink50,
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.only(right: 8, left: 8, bottom: 8),
        elevation: 0,
      ),
    );
  }

  /// 保存中の画面全体を覆うローディングダイアログ
  static void showLoadingDialog() {
    final navigatorContext = NavigationService.navigatorKey.currentContext!;
    unawaited(
      showGeneralDialog(
        context: navigatorContext,
        barrierColor: IHSColors.black100.withAlpha(50),
        pageBuilder: (context, animation, secondaryAnimation) {
          return const LoadingIndicator();
        },
      ),
    );
  }

  /// 上のローディングダイアログをポップする
  static void popLoadingDialog() {
    final navigatorContext = NavigationService.navigatorKey.currentContext!;
    Navigator.of(navigatorContext).pop();
  }

  /// キーボード上部に表示される設定Bar
  static KeyboardActionsConfig setKeyboardActionsConfigBar(
    List<KeyboardActionsItem> actions,
  ) {
    return KeyboardActionsConfig(
      keyboardSeparatorColor: IHSColors.black100,
      actions: actions,
    );
  }

  /// キーボード設定Barに表示されるAction
  static KeyboardActionsItem setKeyboardActionsItem(FocusNode focusNode) {
    return KeyboardActionsItem(
      focusNode: focusNode,
      toolbarButtons: [
        (focusNode) {
          return Container(
            margin: const EdgeInsets.only(right: 16),
            child: GestureDetector(
              onTap: () => focusNode.unfocus(),
              child: Text(
                '完了',
                style: IHSTextStyle.small,
              ),
            ),
          );
        }
      ],
    );
  }

  static void Function() getScrollTopFunction(
    ScrollController scrollController,
  ) {
    return () async {
      if (scrollController.hasClients) {
        await scrollController.animateTo(
          0,
          duration: const Duration(milliseconds: 200),
          curve: Curves.linear,
        );
      }
    };
  }

  static bool compareVersion(String serverVersion, String deviceVersion) {
    final formatedServerVersion = formatVersionNumber(serverVersion);
    final formatedDeviceVersion = formatVersionNumber(deviceVersion);

    return formatedServerVersion <= formatedDeviceVersion;
  }

  static int formatVersionNumber(String version) {
    // 集計用変数
    var tempValue = '';
    // ピリオドで分割する
    final versionNumbers = version.split('.');
    // 配列の個数で識別
    // ex.) version 15 => '150000' => 150000
    if (versionNumbers.length == 1) {
      tempValue = versionNumbers.first.padRight(6, '0');
    }

    // ex.) version 8.5 => '080500' => 800500
    if (versionNumbers.length == 2) {
      versionNumbers.asMap().forEach((int index, String value) {
        tempValue += value.padLeft(2, '0');
      });
      tempValue = tempValue.padRight(6, '0');
    }

    // ex.) version 1.0.1 => '010001' => 10001
    if (versionNumbers.length == 3) {
      versionNumbers.asMap().forEach((int index, String value) {
        // パッチバージョンは、強制アップデートしない
        if (index == 2) {
          tempValue += '00';
          return;
        }

        tempValue += value.padLeft(2, '0');
      });
    }

    return int.parse(tempValue);
  }
}
