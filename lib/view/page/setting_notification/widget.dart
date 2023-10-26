import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../component/base_app_bar/widget.dart';
import '../../component/base_layout/widget.dart';
import '../../component/swicth_area/widget.dart';
import '../../style/colors.dart';
import '../../style/text_style.dart';
import 'notifier.dart';

class SettingNotificationPage extends ConsumerWidget {
  const SettingNotificationPage({super.key});

  String get itemStringNotification => '通知';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(settingNotificationProvider);
    final notifier = ref.watch(settingNotificationProvider.notifier);

    return BaseLayout(
      reload: () async {
        ref.refresh(settingNotificationProvider);
      },
      body: Scaffold(
        backgroundColor: IHSColors.pink100,
        appBar: AppBar(
          backgroundColor: IHSColors.white,
          elevation: 0,
          centerTitle: true,
          iconTheme: const IconThemeData(color: IHSColors.pink500),
          title: Text(itemStringNotification),
          leading: const AppBarLeadingIconButton(),
        ),
        body: state.map(
          loading: (_) => const SizedBox(),
          loaded: (loadedState) {
            return Column(
              children: <Widget>[
                const SizedBox(height: 24),
                DecoratedBox(
                  decoration: BoxDecoration(
                    color: IHSColors.white,
                    border: Border.all(color: IHSColors.black200),
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    height: 56,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          itemStringNotification,
                          style: IHSTextStyle.small,
                          textAlign: TextAlign.left,
                        ),
                        Transform.scale(
                          scale: 0.85,
                          child: SwitchArea(
                            value: loadedState.permission,
                            onChanged: (value) async {
                              await notifier.setNotificationPermission(
                                enable: value,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
