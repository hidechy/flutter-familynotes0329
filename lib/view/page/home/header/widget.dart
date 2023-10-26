import 'package:family_notes/extension/int.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../extension/date_time.dart';
import '../../../../extension/string.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../provider/child/state.dart';
import '../../../style/colors.dart';
import '../../../style/text_style.dart';
import '../body/state.dart';

/// ホームで表示するヘッダー
/// - 妊婦の場合: 妊娠○か月
/// - 子どもの場合: 名前・生年月日
class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
    required this.homeLayout,
    // 選択中の子ども
    required this.child,
    required this.onTap,
  });

  final HomeLayout homeLayout;
  final IHSChild child;

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 76,
        decoration: const BoxDecoration(
          color: IHSColors.yellow100,
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              color: IHSColors.black100, //色
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            const SizedBox(width: 24),
            SizedBox(
              height: 40,
              width: 40,
              child: child.map(
                baby: (baby) {
                  return SvgPicture.asset(
                    Assets.images.iconBaby,
                    width: 40,
                    height: 40,
                  );
                },
                child: (child) {
                  return SvgPicture.asset(
                    Assets.images.iconChild,
                    width: 40,
                    height: 40,
                  );
                },
              ),
            ),
            const SizedBox(width: 16),
            Expanded(child: _buildTextArea()),
            const Icon(
              Icons.arrow_forward_ios_rounded,
            ),
            const SizedBox(width: 24),
          ],
        ),
      ),
    );
  }

  Widget _buildTextArea() {
    var title = '';
    String? subTitle;
    String? ageStr;

    child.map(
      baby: (baby) {
        final birthScheduleDate = baby.data.birthScheduleDate
            .toDateTime(DateFormatType.yyyymmddhhmmss);
        final number = birthScheduleDate.toPregnantMonthsNumber;
        title = '妊娠$numberか月';
      },
      child: (child) {
        title = child.data.childNickname ?? '';
        final birthdayStr = child.data.birthday;
        final monthFromBirth = child.data.monthFromBirth;

        if (birthdayStr == null) {
          return '';
        }
        final birthScheduleDate =
            birthdayStr.toDateTime(DateFormatType.yyyymmddhhmmss).yyyymmdd;
        subTitle = '($birthScheduleDate生まれ)';
        ageStr = monthFromBirth == null ? '' : monthFromBirth.toAgeFromMonths;
      },
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: IHSTextStyle.medium,
          maxLines: 1,
        ),
        if (subTitle != null && ageStr != null)
          Wrap(crossAxisAlignment: WrapCrossAlignment.center, children: [
            Text(
              ageStr!,
              style: IHSTextStyle.small,
            ),
            const SizedBox(width: 8),
            Text(
              subTitle!,
              style: IHSTextStyle.xSmall,
            ),
          ]),
      ],
    );
  }
}
