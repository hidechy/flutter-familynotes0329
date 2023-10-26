import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../component/multiline_text_field/widget.dart';
import '../../../style/text_style.dart';
import '../notifier.dart';

class MemoTextArea extends ConsumerWidget {
  const MemoTextArea({
    super.key,
    required this.memoController,
    required this.focusNode,
  });

  final TextEditingController memoController;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(childHealthCheckInputProvider.notifier);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'メモ',
          style: IHSTextStyle.small,
        ),
        const SizedBox(height: 8),
        MultilineTextField(
          controller: memoController,
          focusNode: focusNode,
          hintText: '自由に記入してください。',
          minLines: 4,
          onChanged: notifier.onChangedNote,
        ),
      ],
    );
  }
}
