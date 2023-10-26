import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../gen/assets.gen.dart';
import '../../component/ihs_button/type.dart';
import '../../component/ihs_button/widget.dart';
import '../../style/colors.dart';
import '../../style/text_style.dart';

final networkErrorStateProvider = StateProvider<bool>((ref) {
  return false;
});

class ErrorPage extends ConsumerWidget {
  const ErrorPage({required this.onPress, super.key});

  final Future Function()? onPress;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(networkErrorStateProvider);
    return WillPopScope(
      onWillPop: () async => !state,
      child: Scaffold(
        backgroundColor: IHSColors.pink50,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Assets.images.error,
                width: 100,
              ),
              const SizedBox(height: 32),
              Text(
                'ネットワークが不安定です。',
                style: IHSTextStyle.large.copyWith(
                  color: IHSColors.pink500,
                ),
              ),
              const SizedBox(height: 32),
              Text(
                '電波の安定したところで\n再度お試しください。',
                style: IHSTextStyle.small,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              IHSButton('アプリを再読み込み',
                  type: IHSButtonType.primary, onPressed: onPress)
            ],
          ),
        ),
      ),
    );
  }
}
