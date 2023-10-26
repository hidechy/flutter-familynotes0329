import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../data/model/child_checkup_types/model.dart';
import 'notifier.dart';

enum WeightUnitType {
  // 乳幼児後期健診以下は、体重はg表示
  gram,

  // １歳６か月健診以上は、体重はkg表示
  kiloGram;

  const WeightUnitType();

  static WeightUnitType getUnitType({required ChildCheckupType type}) {
    final childHealthCheckTypeId = type.childCheckupTypeId!;
    // ChildCheckupTypeのidで比較、乳児後期健康診査以下をg単位にする
    if (childHealthCheckTypeId < 4) {
      return WeightUnitType.gram;
    }
    return WeightUnitType.kiloGram;
  }

  static bool isGram(WeightUnitType type) => WeightUnitType.gram == type;
}

enum ChildHealthCheckType {
  /// 1か月児健康診断
  oneMonthHealthCheck(id: 1),

  /// ４か月児健康診査
  fourMonthsHealthCheck(id: 2),

  /// 乳児後期健康診査
  oneYearHealthCheck(id: 3),

  /// １歳６か月健康診査
  oneYearSixMonthsHealthCheck(id: 4),

  /// ２歳６か月歯科健康診査
  twoYearsSixMonthsDentalCheck(id: 5),

  /// ３歳歯科健康診査
  threeYearsHealthCheck(id: 6),

  /// ６歳臼歯健康診査
  sixYearsDentalCheck(id: 7);

  const ChildHealthCheckType({required this.id});

  final int id;

  static ChildHealthCheckType convertType({required int typeId}) {
    const types = ChildHealthCheckType.values;
    final type = types.firstWhere((e) => e.id == typeId);
    return type;
  }
}

enum ChildCheckUpResultType {
  /// 未選択
  noSelect(label: ''),

  /// 異常なし
  noProblem(label: '異常なし'),

  /// 経過観察
  followUp(label: '経過観察'),

  /// 精密検査
  detailedExamination(label: '精密検査'),

  /// 要治療
  needTreatment(label: '要治療');

  const ChildCheckUpResultType({
    required this.label,
  });

  final String label;
}

final checkTypeListProvider =
    AutoDisposeProvider<List<ChildCheckUpResultType>>((ref) {
  final list = checkTypeList;
  final _result = ref.watch(childHealthCheckInputProvider
      .select((s) => s.mapOrNull(loaded: (s) => s.inputData.result)));
  if (_result == null || _result.label.isEmpty) {
    list.removeAt(0);
  }
  return list;
});

List<ChildCheckUpResultType> get checkTypeList => [
      ChildCheckUpResultType.noSelect,
      ChildCheckUpResultType.noProblem,
      ChildCheckUpResultType.followUp,
      ChildCheckUpResultType.detailedExamination,
      ChildCheckUpResultType.needTreatment,
    ];
