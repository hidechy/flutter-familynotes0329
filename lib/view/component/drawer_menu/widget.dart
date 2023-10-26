import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../gen/assets.gen.dart';
import '../../../util/launch.dart';
import '../../../util/page_navigator.dart';
import '../../page/agreement_content/type.dart';
import '../../page/agreement_content/widget.dart';
import '../../page/bottom_bar/notifier.dart';
import '../../page/contact/widget.dart';
import '../../page/setting/widget.dart';
import '../../style/colors.dart';
import '../../style/constants.dart';
import 'menu_item/widget.dart';

class DrawerMenu extends ConsumerWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 40,
            child: DrawerHeader(
              child: Container(),
              decoration: const BoxDecoration(color: IHSColors.yellow50),
            ),
          ),
          DrawerMenuItem(
            buttonText: 'ホーム',
            onTap: () {
              ref
                  .watch(bottomBarStateProvider.notifier)
                  .setTabIndex(IHSConstants.bottomNavHome);
              Navigator.pop(context); // hide drawer
            },
            endItem: true,
          ),
          const SizedBox(height: 24),
          DrawerMenuItem(
            buttonText: '設定',
            onTap: () => _popToSelect(context),
            endItem: false,
          ),
          DrawerMenuItem(
            buttonText: 'プライバシーポリシー',
            onTap: () {
              _pushToAgreementContent(
                context,
                AgreementContentType.privacyPolicy,
              );
            },
            endItem: false,
          ),
          DrawerMenuItem(
            buttonText: '利用規約',
            onTap: () {
              _pushToAgreementContent(context, AgreementContentType.terms);
            },
            endItem: false,
          ),
          DrawerMenuItem(
            buttonText: 'お問い合わせ',
            onTap: () {
              _pushToContact(context);
            },
            endItem: true,
          ),
          const SizedBox(height: 24),
          DrawerMenuItem(
            buttonText: '子育て応援サイト「すくすく」',
            onTap: () {
              UrlLaunch.launchInBrowser(context, IHSConstants.mamafreUrl);
            },
            endItem: true,
            trailing: SvgPicture.asset(Assets.images.siteLink),
          ),
        ],
      ),
    );
  }

  void _pushToContact(BuildContext context) {
    Navigator.pop(context); // hide drawer
    PageNavigator.navigatePage(context, const ContactPage());
  }

  Future<void> _popToSelect(BuildContext context) async {
    Navigator.pop(context); // hide drawer
    await PageNavigator.navigatePage(context, const SettingPage());
  }

  // プライバシーポリシー・利用規約
  Future<void> _pushToAgreementContent(
    BuildContext context,
    AgreementContentType type,
  ) async {
    await PageNavigator.navigatePage(
      context,
      AgreementContentPage(
        showConsentButton: false,
        type: type,
      ),
    );
  }
}
