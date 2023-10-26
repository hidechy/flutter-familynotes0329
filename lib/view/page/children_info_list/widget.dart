import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../util/page_navigator.dart';
import '../../component/child_list_item/state.dart';
import '../../component/child_list_item/widget.dart';
import '../../component/ihs_button/type.dart';
import '../../component/ihs_button/widget.dart';

import '../../component/main_layout/widget.dart';
import '../baby_edit/widget.dart';
import '../child_book_select/notifier.dart';
import '../child_edit/widget.dart';

class ChildrenInfoListPage extends ConsumerWidget {
  const ChildrenInfoListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(childListStatusProvider);

    return MainLayout(
      title: 'お子さま情報',
      showDrawer: false,
      reload: () {
        ref.refresh(childListStatusProvider);
      },
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Positioned.fill(
            child: state.map(init: (_) {
              return const SizedBox();
            }, loaded: (state) {
              final itemList = state.itemList;
              return ListView.separated(
                padding: const EdgeInsets.only(top: 16, bottom: 200),
                shrinkWrap: true,
                itemCount: state.itemList.length + 1,
                itemBuilder: (context, index) => index == state.itemList.length
                    ? _childRegisterButton(context: context)
                    : ChildListItem(
                        itemList[index],
                        onTap: (itemData) {
                          itemData.map(baby: (item) {
                            _pushToBabyEdit(context, item);
                          }, child: (item) {
                            _pushToChildEdit(context, item);
                          });
                        },
                      ),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 24),
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget _childRegisterButton({required BuildContext context}) {
    return Container(
      margin: const EdgeInsets.only(top: 32),
      child: Column(
        children: [
          IHSButton(
            '胎児の情報を新規登録',
            type: IHSButtonType.primary,
            onPressed: () {
              _pushToBabyEdit(context, null);
            },
          ),
          const SizedBox(height: 24),
          IHSButton(
            'お子さまの情報を新規登録',
            type: IHSButtonType.primary,
            onPressed: () {
              _pushToChildEdit(context, null);
            },
          ),
        ],
      ),
    );
  }

  // 胎児登録/編集画面へ
  void _pushToBabyEdit(BuildContext context, ChildListItemDataBaby? item) {
    PageNavigator.navigatePage(context, BabyEditPage(targetBabyItem: item));
  }

  // お子さま登録/編集画面へ
  void _pushToChildEdit(BuildContext context, ChildListItemDataChild? item) {
    PageNavigator.navigatePage(
      context,
      ChildEditPage(targetChildItem: item),
    );
  }
}
