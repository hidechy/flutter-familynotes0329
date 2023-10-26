import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../style/text_style.dart';

class BirthInput extends ConsumerWidget {
  const BirthInput({
    super.key,
    required this.birthText,
  });

  final String birthText;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('生後', style: IHSTextStyle.small),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
          child: Text(
            birthText,
            style: IHSTextStyle.small.copyWith(height: 1),
          ),
        ),
      ],
    );
  }
}
