import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'util.dart';

class UrlLaunch {
  UrlLaunch._();

  static Future<void> launchInBrowser(BuildContext context, String url) async {
    final _uri = Uri.parse(url);
    if (await canLaunchUrl(_uri)) {
      await launchUrl(
        _uri,
        mode: LaunchMode.externalApplication,
      );
    } else {
      IHSUtil.showSnackBar(msg: 'URL先にはアクセスできませんでした。');
    }
  }
}
