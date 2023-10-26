import 'dart:async';

import 'package:family_notes/view/page/splash/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../provider/user/notifier.dart';
import '../../../util/page_navigator.dart';
import '../../../util/util.dart';
import '../../component/base_app_bar/widget.dart';
import '../../component/ihs_button/type.dart';
import '../../component/ihs_dialog/widget.dart';
import '../../service/navigation.dart';
import '../../style/colors.dart';
import '../../style/text_style.dart';
import '../children_info_list/widget.dart';
import '../profile_info/widget.dart';
import '../setting_cancel_member_complete/widget.dart';
import '../setting_notification/widget.dart';
import 'type.dart';

class SettingPage extends ConsumerWidget {
  const SettingPage({super.key});

  List<SettingItemType> get itemTypes => [
        SettingItemType.childSelect,
        SettingItemType.profile,
        SettingItemType.notification,
        // DPF連携の機能が追加されるまでコメントアウト（ito）
        // SettingItemType.kokuzixyun,
        SettingItemType.logout,
        SettingItemType.withdrawal,
      ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ListTile間を区切るライン
    const separateLine = Divider(
      color: IHSColors.black200,
      thickness: 1,
      height: 1,
    );
    return Scaffold(
      backgroundColor: IHSColors.pink100,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          '設定',
          style: IHSTextStyle.medium.copyWith(
            color: IHSColors.pink500,
          ),
        ),
        leading: const AppBarLeadingIconButton(),
      ),
      body: Column(
        children: [
          Container(
            height: 24,
            color: IHSColors.pink100,
          ),
          separateLine,
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: itemTypes.length,
            itemBuilder: (context, index) {
              final type = itemTypes[index];
              return Column(
                children: [
                  if (index == 3) ...[
                    Container(
                      height: 24,
                      color: IHSColors.pink100,
                    ),
                    separateLine
                  ],
                  SettingListTile(
                    type: type,
                    index: index,
                    onTap: () => _push(context, ref, type),
                  ),
                  separateLine
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  void _push(BuildContext context, WidgetRef ref, SettingItemType type) {
    switch (type) {
      case SettingItemType.childSelect:
        _toChildrenInfo(context);
        break;
      case SettingItemType.profile:
        _toProfile(context);
        break;
      case SettingItemType.notification:
        _toNotification(context);
        break;
      case SettingItemType.kokuzixyun:
        // TODO 「国循データプラットフォーム連携・解除」メニューの挙動を記述
        break;
      case SettingItemType.logout:
        IHSDialog(
            context: context,
            title: 'ログアウトします。\nよろしいですか？',
            okStr: 'ログアウト',
            cancelStr: 'キャンセル',
            okButtonType: IHSButtonType.gray,
            cancelButtonType: IHSButtonType.primary,
            onTap: (_) {
              _onTapedLogout(context, ref);
            }).showAlert();
        break;
      case SettingItemType.withdrawal:
        IHSDialog(
            context: context,
            title: '退会した場合、\n全てのデータが確認できなくなります。\nよろしいですか？',
            okStr: '退会する',
            cancelStr: 'キャンセル',
            okButtonType: IHSButtonType.gray,
            cancelButtonType: IHSButtonType.primary,
            onTap: (_) {
              _onTapedCancel(context, ref);
            }).showAlert();
        break;
    }
  }

  // お子さま登録編集
  void _toChildrenInfo(BuildContext context) {
    PageNavigator.navigatePage(context, const ChildrenInfoListPage());
  }

  // プロフィール
  void _toProfile(BuildContext context) {
    PageNavigator.navigatePage(context, const ProfileInfoPage());
  }

  // 通知設定
  void _toNotification(BuildContext context) {
    PageNavigator.navigatePage(context, const SettingNotificationPage());
  }

  // ログアウト
  void _onTapedLogout(BuildContext context, WidgetRef ref) {
    ref.read(userStateProvider.notifier).logout(
      onFailure: (msg) {
        Navigator.pop(context);
        IHSUtil.showSnackBar(msg: msg);
      },
      onSuccess: () async {
        await IHSDialog(
          context: NavigationService.navigatorKey.currentContext!,
          title: 'ログアウトしました。',
          okStr: 'アプリトップへ',
        ).showAlert();

        unawaited(
          PageNavigator.navigatePage(
            context,
            const SplashPage(),
            type: PageNavigator.typeRemoveUntil,
          ),
        );
      },
    );
  }

  // 退会
  void _onTapedCancel(BuildContext context, WidgetRef ref) {
    ref.read(userStateProvider.notifier).cancel(
      onSuccess: () {
        PageNavigator.navigatePage(
          context,
          const SettingCancelMemberCompletePage(),
          type: PageNavigator.typePushReplacement,
        );
      },
      onFailure: (msg) {
        Navigator.of(context).pop();
        IHSUtil.showSnackBar(msg: msg);
      },
    );
  }
}

class SettingListTile extends StatelessWidget {
  const SettingListTile({
    super.key,
    required this.type,
    required this.index,
    required this.onTap,
  });

  final SettingItemType type;
  final int index;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        height: 56,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        color: IHSColors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(type.title, style: IHSTextStyle.small),
            const Icon(Icons.keyboard_arrow_right),
          ],
        ),
      ),
    );
  }
}
