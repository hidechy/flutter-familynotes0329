import 'package:flutter/material.dart';

import '../../../style/colors.dart';
import '../../../style/text_style.dart';
import '../type.dart';

/// チェックリストに表示するアイテム（健診入力画面の健診結果リストなどで使用）
class SelectListItem extends StatefulWidget {
  const SelectListItem({
    super.key,
    required this.type,
    // リスト全体で選択中のタイプ
    required this.selectedType,
    required this.selected,
    required this.onTap,
  });

  final PregnantDentalCheckInputListItemType type;
  final PregnantDentalCheckInputListItemType selectedType;
  final bool selected;
  final Function(PregnantDentalCheckInputListItemType, bool) onTap;

  @override
  State<SelectListItem> createState() => _SelectListItemState();
}

class _SelectListItemState extends State<SelectListItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        setState(() {
          widget.onTap(widget.type, !widget.selected);
        });
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  widget.type.label,
                  style: IHSTextStyle.small.copyWith(
                    color: (widget.selected)
                        ? IHSColors.black800
                        : IHSColors.black400,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            Container(
              height: 24,
              width: 24,
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: IHSColors.black800, width: 2),
              ),
              child: DecoratedBox(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: widget.type == widget.selectedType
                        ? IHSColors.black800
                        : Colors.transparent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
