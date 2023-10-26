import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../extension/date_time.dart';
import '../../../extension/int.dart';
import '../../../extension/string.dart';
import '../../../gen/assets.gen.dart';
import '../../../provider/child/notifier.dart';
import '../../../provider/child/state.dart';
import '../../../util/page_navigator.dart';
import '../../../util/util.dart';
import '../../component/gradation_layout/widget.dart';
import '../../component/ihs_button/type.dart';
import '../../component/ihs_button/widget.dart';

import '../../component/loading_indicator/widget.dart';
import '../../component/multiline_text_area/widget.dart';
import '../../style/colors.dart';
import '../../style/text_style.dart';
import '../baby_birth_input/state.dart';
import '../baby_birth_input/widget.dart';
import 'birth_info_tile/widget.dart';

class ChildInfoPage extends ConsumerWidget {
  const ChildInfoPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedChildState = ref.watch(selectedChildStateProvider);

    return selectedChildState.map(
      init: (value) => const SizedBox(),
      loading: (_) => const SizedBox(),
      loaded: (loadedState) {
        if (loadedState.child is BabyIHSChild) {
          // 胎児を選択していたらこの画面を開けないのでここは通らない想定
          return const LoadingIndicator();
        }

        final child = (loadedState.child as ChildIHSChild).data;
        final birthday =
            '${child.birthday!.toDateTime(DateFormatType.yyyymmddhhmmss).yyyymmdd} 生まれ';
        final scrollController = ScrollController();

        return GradationLayout(
          title: 'お子さま情報',
          headerPressed: IHSUtil.getScrollTopFunction(scrollController),
          showDrawer: false,
          body: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                const SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      Assets.images.iconChild,
                      width: 64,
                      height: 64,
                    ),
                    const SizedBox(width: 24),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            child.childNickname ?? '',
                            maxLines: 1,
                            softWrap: false,
                            overflow: TextOverflow.ellipsis,
                            style: IHSTextStyle.large,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            child.birthday == null ? '' : birthday,
                            style: IHSTextStyle.small,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                Row(
                  children: [
                    Text(
                      '出産時情報',
                      style: IHSTextStyle.medium.copyWith(
                        color: IHSColors.pink500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                BirthInfoTile(child: child),
                const SizedBox(height: 32),
                Row(
                  children: [
                    Text(
                      'ママ、パパの気持ち',
                      style: IHSTextStyle.small,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                MultilineTextArea(child.motherFatherFeeling ?? ''),
                const SizedBox(height: 32),
                Row(
                  children: [
                    Text(
                      '赤ちゃんへのメッセージ',
                      style: IHSTextStyle.small,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                MultilineTextArea(child.message ?? ''),
                const SizedBox(height: 32),
                Row(
                  children: [
                    Text(
                      'コメント',
                      style: IHSTextStyle.small,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                MultilineTextArea(child.comment ?? ''),
                const SizedBox(height: 32),
                IHSButton(
                  '修正画面へ',
                  type: IHSButtonType.primary,
                  onPressed: () {
                    final birthday = child.birthday
                        ?.toDateTime(DateFormatType.yyyymmddhhmmss);
                    PageNavigator.navigatePage(
                      context,
                      BabyBirthInputPage(
                        initialInputData: BabyBirthInputData(
                          childList: [
                            BabyBirthDataByChild(
                              index: 0,
                              birthday: birthday,
                              birthdayTime: birthday == null
                                  ? null
                                  : TimeOfDay.fromDateTime(birthday),
                              name: child.childNickname ?? '',
                              gender: child.gender!.toGender,
                              height: child.height == null
                                  ? ''
                                  : child.height.toString(),
                              weight: child.weight == null
                                  ? ''
                                  : child.weight.toString(),
                              head: child.headMeasurement == null
                                  ? ''
                                  : child.headMeasurement.toString(),
                              chest: child.chestMeasurement == null
                                  ? ''
                                  : child.chestMeasurement.toString(),
                            ),
                          ],
                          address: child.birthPlace ?? '',
                          doctor: child.birthDoctor ?? '',
                          parentFeeling: child.motherFatherFeeling ?? '',
                          message: child.message ?? '',
                          freeComment: child.comment ?? '',
                          pregnancyWeeks: child.gestationalWeek == null
                              ? ''
                              : child.gestationalWeek.toString(),
                          pregnancyDays: child.gestationalWeekDay == null
                              ? ''
                              : child.gestationalWeekDay.toString(),
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        );
      },
    );
  }
}
