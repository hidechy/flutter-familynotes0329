import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../data/model/notice_category/model.dart';
import '../../../style/colors.dart';
import '../../../style/text_style.dart';
import '../notifier.dart';

class CategoryTags extends ConsumerWidget {
  const CategoryTags({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories =
        ref.watch(infomationSelectProvider.select((s) => s.categories));
    final selectedCategoryId =
        ref.watch(infomationSelectProvider.select((s) => s.selectedCategoryId));
    final notifier = ref.watch(infomationSelectProvider.notifier);

    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Wrap(
        spacing: 12,
        runSpacing: 12,
        children: categories
            .map(
              (CategoryItemModel category) => Tag(
                title: category.name,
                onTap: () => notifier.selectCategory(category.categoryId),
                selected: category.categoryId == selectedCategoryId,
              ),
            )
            .toList(),
      ),
    );
  }
}

class Tag extends StatelessWidget {
  const Tag({
    super.key,
    required this.title,
    required this.selected,
    required this.onTap,
  });

  final String title;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: FittedBox(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: selected ? IHSColors.pink300 : IHSColors.black400,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            title,
            style: IHSTextStyle.small.copyWith(
              color: IHSColors.white,
              height: 1,
            ),
          ),
        ),
      ),
    );
  }
}
