import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/data/local/local_client.dart';
import '/data/repository/child.dart';
import '../../component/child_list_item/state.dart';

/// 手帳(お子さま)一覧の取得状態を管理するプロバイダー
final childListStatusProvider =
    AutoDisposeStateNotifierProvider<ChildListStatusNotifier, ChildListStatus>(
        (ref) {
  return ChildListStatusNotifier(
    ref: ref,
    localClient: ref.watch(localClientProvider),
    repository: ref.watch(childRepositoryProvider),
  );
});

class ChildListStatusNotifier extends StateNotifier<ChildListStatus> {
  ChildListStatusNotifier({
    required this.ref,
    required this.localClient,
    required this.repository,
  }) : super(const ChildListStatus.init()) {
    fetch();
  }

  final StateNotifierProviderRef ref;
  final LocalClient localClient;
  final ChildRepository repository;

  Future<void> fetch() async {
    final response = await repository.childList().catchError((_) {});
    final childModelList = response.data?.list ?? [];

    final itemList = childModelList
        .map(
          (e) => ChildListItemData.fromChildModel(childModel: e),
        )
        .toList();

    state = ChildListStatus.loaded(itemList: itemList);
  }
}
