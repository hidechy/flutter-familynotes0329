import 'package:flutter/material.dart';

import '/data/model/child/model.dart';
import '/extension/date_time.dart';
import '/extension/int.dart';
import '/extension/string.dart';
import '/type/gender.dart';
import '/view/style/colors.dart';
import '/view/style/text_style.dart';

/// お子さまの出生情報を表示
class BirthInfoTile extends StatelessWidget {
  BirthInfoTile({
    super.key,
    required this.child,
  }) : assert(child.gender != null, 'Gender is null');

  final ChildModel child;

  @override
  Widget build(BuildContext context) {
    final childLabel = child.gender!.toGender.childLabel;

    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: IHSColors.white,
        border: Border.all(
          color: IHSColors.black300,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          FittedBox(
            child: Row(
              children: [
                Text(
                  '出産日時',
                  textAlign: TextAlign.start,
                  style: IHSTextStyle.medium,
                ),
                const SizedBox(width: 24),
                Text(
                  (child.birthday ?? '')
                      .toDateTime(DateFormatType.yyyymmddhhmmss)
                      .yyyymmddhhmm,
                  textAlign: TextAlign.start,
                  style: IHSTextStyle.medium,
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          _buildContent('性別', childLabel),
          const SizedBox(height: 16),
          Row(
            children: [
              _buildContent('身長', '${child.height ?? ''} cm'),
              const SizedBox(width: 16),
              _buildContent('体重', '${child.weight ?? ''} g'),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              _buildContent('頭囲', '${child.headMeasurement ?? ''} cm'),
              const SizedBox(width: 16),
              _buildContent('胸囲', '${child.chestMeasurement ?? ''} cm'),
            ],
          ),
          const SizedBox(height: 16),
          _buildContent('妊娠期間',
              '${child.gestationalWeek ?? ''}週　${child.gestationalWeekDay ?? ''}日'),
          const SizedBox(height: 16),
          _buildContent('出産した場所', child.birthPlace ?? ''),
          const SizedBox(height: 16),
          _buildContent('医師または助産師', child.birthDoctor ?? ''),
        ],
      ),
    );
  }

  Widget _buildContent(String title, String content) {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            textAlign: TextAlign.start,
            style: IHSTextStyle.small,
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              content,
              overflow: TextOverflow.ellipsis,
              maxLines: 10,
              textAlign: TextAlign.start,
              style: IHSTextStyle.small,
            ),
          )
        ],
      ),
    );
  }
}
