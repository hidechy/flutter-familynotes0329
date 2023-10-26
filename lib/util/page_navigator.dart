import 'package:flutter/material.dart';

class PageNavigator {
  String widgetName = '';
  static const String typePush = 'push';
  static const String typeRemoveUntil = 'removeUntil';
  static const String typePopUntil = 'popUntil';
  static const String typeRestorablePush = 'restorablePush';
  static const String typePopUntilFirst = 'popUntilFirst';
  static const String typePushReplacement = 'pushReplacement';

  static Future<void> navigatePage(
    BuildContext context,
    Widget? widget, {
    String type = typePush,
    void Function()? callback,
  }) async {
    debugPrint('navigate_page:' + widget.runtimeType.toString());
    switch (type) {
      case typePush:
        await Navigator.of(context)
            .push(MaterialPageRoute<void>(builder: (_) => widget!))
            .then((_) {
          if (callback == null) {
            return;
          }

          callback();
        });
        break;
      case typePushReplacement:
        await Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => widget!),
        );
        break;
      case typeRemoveUntil:
        await Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => widget!), (_) => false);
        break;
      case typePopUntil:
        break;
      case typeRestorablePush:
        break;
      case typePopUntilFirst:
        Navigator.of(context).popUntil((route) => route.isFirst);
        break;
    }
    debugPrint('navigate_page:end' + widget.runtimeType.toString());
  }
}
