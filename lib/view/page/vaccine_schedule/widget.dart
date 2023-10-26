import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import './custom_tab_view/widget.dart';
import './vaccine_list_tile/widget.dart';
import '../../../data/local/local_client.dart';
import '../../../util/page_navigator.dart';
import '../../../util/util.dart';
import '../../component/dot_line/dot_line.dart';
import '../../component/gradation_layout/widget.dart';
import '../../style/text_style.dart';
import '../vaccine_done_input/widget.dart';
import '../vaccine_schedule_input/widget.dart';
import 'notifier.dart';
import 'state.dart';
import 'type.dart';

class VaccineSchedulePage extends ConsumerStatefulWidget {
  const VaccineSchedulePage({super.key});

  @override
  VaccineScheduleState createState() => VaccineScheduleState();
}

class VaccineScheduleState<VaccineSchedulePage> extends ConsumerState {
  Widget? directDetail;
  bool posted = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      posted = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(vaccineDetailStatusProvider);
    final notifier = ref.watch(vaccineDetailStatusProvider.notifier);
    const widthMargin = 64; // SafeAreaでのleft, rightのマージンが入っている
    final scrollController = ScrollController();

    return GradationLayout(
      title: '予防接種',
      headerPressed: IHSUtil.getScrollTopFunction(scrollController),
      showDrawer: false,
      reload: () {
        ref.refresh(vaccineDetailStatusProvider);
      },
      horizontalPadding: 0,
      body: CustomTabView(
        initPosition: state.tabItemPosition,
        itemCount: tabItems.length,
        tabBuilder: (context, index) => Center(
          child: SizedBox(
            width: (MediaQuery.of(context).size.width - widthMargin) /
                tabItems.length,
            child: Tab(
              text: (index == 0)
                  ? TabType.doseScheduled.label
                  : TabType.doseDone.label,
            ),
          ),
        ),
        pageBuilder: (context, index) => Scrollbar(
          controller: scrollController,
          child: SingleChildScrollView(
            controller: scrollController,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  _TabViewTopArea(index: index),
                  if (index == 0 && state.vaccineListCount > 0)
                    ListView.builder(
                      shrinkWrap: true,
                      primary: false,
                      itemCount: state.vaccineListCount,
                      itemBuilder: (context, index) {
                        final data = notifier.getValidityData(index);
                        debugPrint('FCM VaccineType:' +
                            data.vaccineTypeId.toString() +
                            ':' +
                            syncTmpParams[LocalTmpKeyType.pageTypeVaccine]
                                .toString());
                        if (data.vaccineTypeId ==
                            syncTmpParams[LocalTmpKeyType.pageTypeVaccine]) {
                          syncTmpParams[LocalTmpKeyType.pageTypeVaccine] = null;
                          debugPrint('vaccine addpost $posted');
                          if (posted) {
                            Timer(const Duration(milliseconds: 200), () {
                              PageNavigator.navigatePage(
                                  context, getInputPage(index, data));
                            });
                          }
                        }
                        return GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () {
                            debugPrint('schedule tap line[$index]');
                            PageNavigator.navigatePage(
                              context,
                              getInputPage(index, data),
                            );
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (index != 0)
                                const DotLine(
                                  paddingLeft: 12,
                                  paddingRight: 12,
                                ),
                              VaccineListTile(
                                name: notifier.getValidityDataName(index),
                                vaccineScheduleType:
                                    notifier.getValidityDataType(index),
                                dosingType:
                                    notifier.getValidityDataDosingType(index),
                                list: notifier.getValidityInoculationData(
                                    index, DataListType.schedule),
                                dListType: DataListType.schedule,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  if (index == 1 && state.vaccineListCount > 0)
                    ListView.builder(
                      shrinkWrap: true,
                      primary: false,
                      itemCount: state.vaccineListCount,
                      itemBuilder: (context, index) => GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {
                          debugPrint('history tap line[$index]');
                          PageNavigator.navigatePage(
                            context,
                            VaccineDoneInputPage(
                              data: notifier.getValidityData(index),
                              dListType: DataListType.history,
                              idx: index,
                            ),
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (index != 0)
                              const DotLine(
                                paddingLeft: 12,
                                paddingRight: 12,
                              ),
                            const SizedBox(height: 8),
                            VaccineListTile(
                              name: notifier.getValidityDataName(index),
                              vaccineScheduleType:
                                  notifier.getValidityDataType(index),
                              dosingType:
                                  notifier.getValidityDataDosingType(index),
                              list: notifier.getValidityInoculationData(
                                  index, DataListType.history),
                              dListType: DataListType.history,
                            ),
                            const SizedBox(height: 8),
                          ],
                        ),
                      ),
                    ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ),
        onPositionChange: notifier.setTabPosition,
      ),
    );
  }

  Widget getInputPage(int index, VaccineDetailData data) {
    final page = VaccineScheduleInputPage(
      data: data,
      idx: index,
    );
    return page;
  }
}

class _TabViewTopArea extends StatelessWidget {
  const _TabViewTopArea({required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return index == 0
        ? Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            margin: const EdgeInsets.symmetric(vertical: 16),
            child: Text(
              '※ご登録された接種予定日の前日に、プッシュ通知が届きます。（プッシュ通知をご希望の方は、本アプリ内の通知設定とスマホのアプリ設定の通知設定の両方をONにしてください。）',
              style: IHSTextStyle.xSmall,
            ),
          )
        : const SizedBox(height: 35);
  }
}
