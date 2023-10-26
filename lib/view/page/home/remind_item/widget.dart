import 'package:family_notes/view/style/colors.dart';
import 'package:family_notes/view/style/text_style.dart';
import 'package:flutter/material.dart';

/// ホームで表示するリマインダボタン
/// - お子さまが生まれた時はこちらをタップ
class RemindItem extends StatelessWidget {
  const RemindItem({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return _ChildBirthButton(
      'お子さまが生まれたらコチラ',
      onPressed: onTap,
    );
  }
}

class _ChildBirthButton extends StatelessWidget {
  const _ChildBirthButton(this.title, {required this.onPressed});

  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(
        right: 24,
        left: 24,
        bottom: 16,
      ),
      child: TextButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: IHSColors.pink400,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        onPressed: onPressed,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            title,
            style: IHSTextStyle.small.copyWith(color: IHSColors.white),
          ),
        ),
      ),
    );
  }
}
