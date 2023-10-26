import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';

import '../util/launch.dart';
import '../view/style/colors.dart';

RegExp _urlReg = RegExp(
  // URLを表す正規表現
  r'https?://([\w-]+\.)+[\w-]+(/[\w-./?%&=#]*)?',

  // 大文字・小文字を区別しないため、falseにする
  caseSensitive: false,

  // 「.」は、文末の「.」も含めて任意の一文字を表すものとするため、trueにする
  dotAll: true,
);

extension TextExtension on Text {
  // 文字列内のurlを検出してlinkに変換する
  RichText convertUrlToLink(
    BuildContext context, {
    required TextStyle textStyle,
  }) {
    final textSpans = <InlineSpan>[];

    data!.splitMapJoin(
      _urlReg,
      onMatch: (Match match) {
        final _match = match[0]!;
        const _spacer = WidgetSpan(child: SizedBox(width: 4));
        textSpans
          ..add(_spacer)
          ..add(
            TextSpan(
              text: _match,
              style: textStyle.copyWith(
                color: IHSColors.pink500,
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () => UrlLaunch.launchInBrowser(
                      context,
                      _match,
                    ),
            ),
          )
          ..add(_spacer);
        return '';
      },
      onNonMatch: (String text) {
        textSpans.add(TextSpan(
          text: text,
          style: textStyle,
        ));
        return '';
      },
    );

    return RichText(text: TextSpan(children: textSpans));
  }
}
