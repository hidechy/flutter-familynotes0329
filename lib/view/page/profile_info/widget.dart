import 'package:family_notes/extension/context.dart';
import 'package:family_notes/extension/string.dart';
import 'package:family_notes/type/gender.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/extension/date_time.dart';
import '/view/component/ihs_button/type.dart';
import '/view/component/ihs_button/widget.dart';
import '/view/component/main_layout/widget.dart';
import '/view/style/colors.dart';
import '/view/style/text_style.dart';
import '../../../util/page_navigator.dart';
import '../../../util/util.dart';
import '../email_reset/widget.dart';
import '../profile_edit/widget.dart';
import '../setting_password_reset_input/widget.dart';
import 'notifier.dart';
import 'state.dart';

class ProfileInfoPage extends ConsumerWidget {
  const ProfileInfoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(profileInfoStateProvider);
    final scrollController = ScrollController();

    return MainLayout(
      title: 'プロフィール情報',
      headerPressed: IHSUtil.getScrollTopFunction(scrollController),
      showDrawer: false,
      reload: () {
        ref.refresh(profileInfoStateProvider);
      },
      body: state.map(
          loading: (_) => const SizedBox(),
          loaded: (ProfileInfoLoaded state) {
            return SingleChildScrollView(
              controller: scrollController,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'プロフィール',
                      style: IHSTextStyle.medium.copyWith(
                        color: IHSColors.pink500,
                      ),
                    ),
                    const SizedBox(height: 24),
                    _buildProfileItem('名前（ニックネーム）', state.inputData!.name),
                    const SizedBox(height: 16),
                    _buildProfileItem(
                        '生年月日', state.inputData!.birthday?.yyyymmdd ?? ''),
                    const SizedBox(height: 16),
                    _buildProfileItem('性別', state.inputData!.gender.adultLabel),
                    const SizedBox(height: 16),
                    _buildProfileItem(
                        '郵便番号', state.inputData!.postalCode.toPostalCode()),
                    const SizedBox(height: 16),
                    _buildProfileItem(
                        'メールアドレス',
                        state.inputData!.email.toAdjustText(
                            textStyle: IHSTextStyle.small,
                            specifySize: context.screenWidth - 80)),
                    const SizedBox(height: 32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IntrinsicWidth(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              IHSButton(
                                'プロフィール編集',
                                type: IHSButtonType.primary,
                                onPressed: () {
                                  _pushToProfileEdit(context, state.inputData!);
                                },
                              ),
                              const SizedBox(height: 24),
                              IHSButton(
                                'メールアドレス変更',
                                type: IHSButtonType.primary,
                                onPressed: () {
                                  _pushToEmailEdit(context);
                                },
                              ),
                              const SizedBox(height: 24),
                              IHSButton(
                                'パスワード変更',
                                type: IHSButtonType.primary,
                                onPressed: () {
                                  _pushToPasswordReset(context);
                                },
                              ),
                              const SizedBox(height: 24),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }

  Widget _buildProfileItem(String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: IHSTextStyle.small,
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            const SizedBox(width: 16),
            Flexible(
              child: Text(
                content,
                overflow: TextOverflow.clip,
                style: IHSTextStyle.small,
              ),
            ),
          ],
        ),
      ],
    );
  }

  void _pushToProfileEdit(BuildContext context, ProfileInfoData inputData) {
    PageNavigator.navigatePage(context, ProfileEditPage(inputData: inputData));
  }

  void _pushToEmailEdit(BuildContext context) {
    PageNavigator.navigatePage(context, EmailResetPage());
  }

  void _pushToPasswordReset(BuildContext context) {
    PageNavigator.navigatePage(context, const SettingPasswordResetInputPage());
  }
}
