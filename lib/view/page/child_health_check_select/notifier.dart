// 乳幼児健診の選択画面の状態を管理するプロバイダー
// ignore_for_file: unrelated_type_equality_checks, avoid_bool_literals_in_conditional_expressions

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../data/model/child_checkup_types/model.dart';
import '../../../data/model/response/model.dart';
import '../../../data/repository/child_checkup.dart';
import '../../../data/request/child_checkup_record_detail/request.dart';
import '../../../provider/user/notifier.dart';
import '../../../util/util.dart';
import '../../style/texts.dart';
import '../child_health_check_input/state.dart';
import '../child_health_check_input/type.dart';
import 'state.dart';

final childHealthCheckSelectProvider =
    AutoDisposeStateNotifierProvider<ChildHealthCheckSelectNotifier, ChildHealthCheckSelectState>((ref) {
  final childCheckUpRepository = ref.read(childCheckUpRepositoryProvider);
  return ChildHealthCheckSelectNotifier(
    ref: ref,
    repository: childCheckUpRepository,
    childId: ref.watch(userStateProvider).mapOrNull(
          authenticated: (s) => s.selectedChildId,
        ),
  );
});

class ChildHealthCheckSelectNotifier extends StateNotifier<ChildHealthCheckSelectState> {
  ChildHealthCheckSelectNotifier({
    required this.ref,
    required this.repository,
    required this.childId,
  }) : super(const ChildHealthCheckSelectState()) {
    fetch();
  }

  final ChildCheckUpRepository repository;
  final AutoDisposeStateNotifierProviderRef ref;
  final int? childId;

  Future<void> fetch() async {
    if (childId == null) {
      _showError('予期せぬエラーが発生しました');
      return;
    }

    await fetchTypes();
    await fetchCheckUpHistory();
  }

  // 乳幼児健診マスタの取得
  Future<void> fetchTypes() async {
    await repository.fetchChildCheckupTypes().then(
      (response) {
        if (response.status == ResponseStatus.failure) {
          _showError(response.msg ?? IHSTexts.error);
          return;
        }

        state = state.copyWith(
          childCheckupTypes: response.data ?? const ChildCheckupTypesModel(list: []),
        );
      },
    ).catchError(
      (_) {},
    );
  }

  // 乳幼児健診履歴の取得
  Future<void> fetchCheckUpHistory() async {
    await repository.fetchChildCheckupRecords(childId: childId!).then(
      (response) {
        final data = response.data;
        if (response.isFailure || data == null) {
          _showError(response.msg ?? IHSTexts.error);
          return;
        }

        state = state.copyWith(
          checkupHistory: data,
          inputData: const ChildHealthCheckInputData(),
        );
      },
    ).catchError(
      (_) {},
    );
  }

  void _showError(String msg) {
    IHSUtil.showSnackBar(msg: msg);
  }

  void selectHealthCheck(ChildCheckupType selectType) {
    state = state.copyWith(inputData: state.inputData.copyWith(selectedType: selectType));
  }

  void toggleShowHealthCheckList() {
    final showHealthCheckList = state.showHealthCheckList;
    state = state.copyWith(showHealthCheckList: !showHealthCheckList);
  }

  Future<void> fetchHistory({
    required int childCheckupRecordId,
    required int childId,
    required Function(ChildHealthCheckInputData) onSuccess,
    required Function(String) onFailure,
  }) async {
    var inputData = const ChildHealthCheckInputData();

    await repository
        .fetchDetail(
      request: ChildCheckupRecordDetailRequest(
        recordId: childCheckupRecordId,
        childId: childId,
      ),
    )
        .then(
      (response) {
        if (response.status == ResponseStatus.failure) {
          _showError(response.msg ?? IHSTexts.error);
          return inputData;
        }

        inputData = ChildHealthCheckInputData(
          recordId: childCheckupRecordId,
          selectedType: _getChildCheckupType(
            checkUpType: response.data!.childCheckupTypeId,
            checkupTypes: state.childCheckupTypes,
          ),
          checkedDate: response.data!.checkupDay,
          height: response.data?.height != null ? response.data!.height!.toString() : '',
          weight: response.data?.weight != null ? response.data!.weight!.toString() : '',
          head: response.data?.headMeasurement != null ? response.data!.headMeasurement!.toString() : '',
          chest: response.data?.chestMeasurement != null ? response.data!.chestMeasurement!.toString() : '',
          needDentalTreatment: response.data!.isBadTooth == '1' ? true : false,
          countBadTeeth: response.data?.badToothNum != null ? response.data!.badToothNum!.toString() : '',
          countTeeth: response.data?.teethNum != null ? response.data!.teethNum!.toString() : '',
          countBadBabyTeeth: response.data?.babyBadToothNum != null ? response.data!.babyBadToothNum!.toString() : '',
          countBadAdultTeeth:
              response.data?.adultBadToothNum != null ? response.data!.adultBadToothNum!.toString() : '',
          result: _getResult(
            isNormal: response.data!.isNormal,
            isObservation: response.data!.isObservation,
            isDetailedExamination: response.data!.isDetailedExamination,
            isTreatment: response.data!.isTreatment,
          ),
          note: response.data?.note ?? '',
        );

        onSuccess(inputData);
      },
    ).catchError(
      (_) {
        return const ChildHealthCheckInputData();
      },
    );
  }

// state.childCheckupTypes から ChildCheckupType を取得する
  ChildCheckupType _getChildCheckupType({required int checkUpType, required ChildCheckupTypesModel checkupTypes}) {
    for (var i = 0; i < checkupTypes.list.length; i++) {
      if (checkupTypes.list[i].childCheckupTypeId == checkUpType) {
        return checkupTypes.list[i];
      }
    }

    return const ChildCheckupType(
      childCheckupTypeId: 0,
      checkUpName: '',
      checkUpShortName: '',
    );
  }

// ChildCheckUpResultType を取得する
  ChildCheckUpResultType _getResult(
      {required String isNormal,
      required String isObservation,
      required String isDetailedExamination,
      required String isTreatment}) {
    if (isObservation == '1') {
      return ChildCheckUpResultType.followUp;
    } else if (isDetailedExamination == '1') {
      return ChildCheckUpResultType.detailedExamination;
    } else if (isTreatment == '1') {
      return ChildCheckUpResultType.needTreatment;
    } else if (isNormal == '1') {
      return ChildCheckUpResultType.noProblem;
    } else {
      return ChildCheckUpResultType.noSelect;
    }
  }
}
