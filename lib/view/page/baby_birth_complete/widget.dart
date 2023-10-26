import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';

import '../../../gen/assets.gen.dart';

import '../../../provider/user/notifier.dart';
import '../../../util/page_navigator.dart';
import '../../../util/util.dart';
import '../../component/gradation_layout/widget.dart';
import '../../component/ihs_button/type.dart';
import '../../component/ihs_button/widget.dart';
import '../../component/loading_indicator/widget.dart';
import '../../style/colors.dart';
import '../../style/text_style.dart';
import '../child_book_select/notifier.dart';

/// 出産情報登録完了画面
class BabybirthCompletePage extends ConsumerWidget {
  const BabybirthCompletePage({
    super.key,
    required this.addedChildId,
  });

  final int addedChildId;

  Future<List<Widget>> _drawAnimation() async {
    Widget _draw(String path) => Lottie.asset(path);
    final backAnime = await compute(_draw, Assets.lotties.back);
    final stringAnime = await compute(_draw, Assets.lotties.congratulation);

    return [backAnime, stringAnime];
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FutureBuilder(
      future: _drawAnimation(),
      builder: (context, snapshot) {
        if (!snapshot.hasData ||
            snapshot.connectionState == ConnectionState.waiting) {
          return const _Layout(
            body: LoadingIndicator(),
          );
        }
        final animeList = snapshot.data! as List<Widget>;
        // 背景のアニメーション
        final backAnime = animeList.first;
        // Congratulationのアニメーション
        final stringAnime = animeList.last;

        return _Layout(
          body: Column(
            children: [
              const SizedBox(height: 64),
              Stack(
                alignment: Alignment.center,
                children: [
                  backAnime,
                  Padding(
                    padding: const EdgeInsets.only(top: 32),
                    child: Image.asset(
                      Assets.images.birthCongratulation.path,
                      width: 200,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: 240,
                child: stringAnime,
              ),
              const SizedBox(height: 32),
              Text(
                'お子さまの情報の登録が\n完了しました。',
                textAlign: TextAlign.center,
                style: IHSTextStyle.medium.copyWith(
                  color: IHSColors.pink500,
                ),
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: 152,
                child: IHSButton(
                  'ホームへ',
                  type: IHSButtonType.primary,
                  onPressed: () async {
                    // 子ども一覧の更新を依頼
                    await ref.read(childListStatusProvider.notifier).fetch();

                    // 選択中の子供の更新
                    await ref.read(userStateProvider.notifier).onSelectedBook(
                          childId: addedChildId,
                          childType: 'child',
                          onFailure: (msg) => IHSUtil.showSnackBar(msg: msg),
                        );

                    await PageNavigator.navigatePage(
                      context,
                      null,
                      type: PageNavigator.typePopUntilFirst,
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _Layout extends StatelessWidget {
  const _Layout({required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return GradationLayout(
      title: '出産情報登録',
      showDrawer: false,
      automaticallyImplyLeading: false,
      body: body,
    );
  }
}
