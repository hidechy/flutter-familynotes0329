import 'package:family_notes/view/style/texts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/data/repository/child_growth_record.dart';
import '/provider/child/notifier.dart';
import '../../../data/model/response/model.dart';
import '../../../util/util.dart';
import 'state.dart';

/// 身体発育曲線画面の状態を管理するプロバイダー
final childGraphGraphStateProvider = AutoDisposeStateNotifierProvider<
    ChildGraphTypeNotifier, ChildWeightGraphState>((ref) {
  return ChildGraphTypeNotifier(
    ref: ref,
    repository: ref.watch(childGrowthRecordRepositoryProvider),
  );
});

class ChildGraphTypeNotifier extends StateNotifier<ChildWeightGraphState> {
  ChildGraphTypeNotifier({
    required this.ref,
    required this.repository,
  }) : super(const ChildWeightGraphState()) {
    _init();
  }

  final Ref ref;
  final ChildGrowthRecordRepository repository;
  late int _childId;

  Future<void> _init() async {
    final selectedChild = ref
        .read(selectedChildStateProvider)
        .mapOrNull(loaded: (state) => state);
    if (selectedChild == null) {
      _showError(IHSTexts.error);
      return;
    }

    final child = selectedChild.child.mapOrNull(child: (value) => value.data);
    if (child == null) {
      _showError(IHSTexts.error);
      return;
    }

    _childId = selectedChild.childId;
    final birthday = DateTime.parse(child.birthday!);
    final daysDifference = DateTime.now().difference(birthday).inDays;
    final period = ChildGrapthPreriod.getTypeFromDiffrenceBirthdayAndToday(
      daysDifference,
    );
    _setChildGrapthPeriod(period);
    await fetchRecords();
  }

  Future<void> fetchRecords() async {
    await repository
        .fetchGraphData(
      childId: _childId,
      ageCategory: state.selectedChildGrapthPreriod.categoryId,
    )
        .then(
      (response) {
        final records = response.data;

        if (response.status == ResponseStatus.failure || records == null) {
          _showError(response.msg ?? IHSTexts.error);
          return;
        }

        state = state.copyWith(
          growthGraphDataList: records.growthGraphData,
          bandGraphDataList: records.bandGraphData,
        );
      },
    ).catchError((_) {});
  }

  void _setChildGrapthPeriod(ChildGrapthPreriod period) {
    state = state.copyWith(selectedChildGrapthPreriod: period);
  }

  void onTapSegmentView(ChildGraphType type) {
    state = state.copyWith(selectedGraphType: type);
  }

  void onTapPeriod(ChildGrapthPreriod period) {
    state = state.copyWith(
      growthGraphDataList: [], // リセット
      bandGraphDataList: [], // リセット
      selectedChildGrapthPreriod: period,
    );

    fetchRecords();
  }

  void togglePulldownVisible() {
    state = state.copyWith(
      showPeriodPulldown: !state.showPeriodPulldown,
    );
  }

  void _showError(String msg) {
    IHSUtil.showSnackBar(msg: msg);
  }
}
