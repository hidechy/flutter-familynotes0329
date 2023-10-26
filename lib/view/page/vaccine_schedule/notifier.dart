import 'dart:math' as math;

import 'package:family_notes/extension/date_time.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../../data/model/response/model.dart';
import '../../../data/model/vaccine/model.dart';
import '../../../data/repository/vaccine.dart';
import '../../../provider/user/notifier.dart';
import '../../../util/util.dart';
import '../../style/texts.dart';
import 'state.dart';
import 'type.dart';

/// 予防接種一覧の取得状態を管理するプロバイダー
final vaccineDetailStatusProvider = AutoDisposeStateNotifierProvider<
    VaccineDetailDataNotifier, VaccineDetailDataState>((ref) {
  return VaccineDetailDataNotifier(
    ref: ref,
    vaccineRepository: ref.read(vaccineRepositoryProvider),
    childId: ref.watch(userStateProvider
        .select((s) => s.mapOrNull(authenticated: (s) => s.selectedChildId))),
  );
});

class VaccineDetailDataNotifier extends StateNotifier<VaccineDetailDataState>
    with LocatorMixin {
  VaccineDetailDataNotifier({
    required this.ref,
    required this.vaccineRepository,
    required this.childId,
  }) : super(VaccineDetailDataState()) {
    setData();
  }

  final AutoDisposeStateNotifierProviderRef<VaccineDetailDataNotifier,
      VaccineDetailDataState> ref;
  final VaccineRepository vaccineRepository;
  final int? childId;

  Future<void> setData() async {
    if (childId == null) {
      IHSUtil.showSnackBar(msg: IHSTexts.error);
      return;
    }

    state = state.copyWith(acquiring: true);
    await vaccineRepository.getVaccineList(childId: childId!).then((response) {
      final _data = response.data;
      if ((response.status != ResponseStatus.success) || (_data == null)) {
        IHSUtil.showSnackBar(msg: response.msg ?? IHSTexts.error);
        return;
      }

      state = state.copyWith(acquiring: false);
      toDisplayData(_data.list);
    }).catchError(
      (_) {
        state = state.copyWith(acquiring: false);
      },
    );
  }

  void setTabPosition(int index) {
    state = state.copyWith(tabItemPosition: index);
  }

  void addDetail({
    required VaccineScheduleType iType,
    required String kType,
    required String name,
    required int neededTimes,
    required Map<String, String> itemList,
    required int vaccineTypeId,
  }) {
    final currentState = state;
    final data = currentState.validityDataList.toList()
      ..add(
        VaccineDetailData(
          type: iType, //定期・任意
          dosingType: kType, // 経口・注射・生
          vaccineName: name, // ワクチン名
          neededTimes: neededTimes, // 必要接種回数max
          selectItemList: itemList,
          vaccineTypeId: vaccineTypeId,
        ),
      );
    state = currentState.copyWith(validityDataList: data);
  }

  void addDetailInoculation({
    required VaccineScheduleType iType,
    required String kType,
    required String name,
    required int neededTimes,
    required List<VaccineInoculationDate> reservedList,
    required List<VaccineInoculationDate> appliedList,
    required Map<String, String> itemList,
    required int vaccineTypeId,
  }) {
    final currentState = state;
    final data = currentState.validityDataList.toList()
      ..add(
        VaccineDetailData(
          type: iType, //定期・任意
          dosingType: kType, // 経口・注射・生
          vaccineName: name, // ワクチン名
          neededTimes: neededTimes, // 必要接種回数max
          reservedList: reservedList,
          appliedList: appliedList,
          selectItemList: itemList,
          vaccineTypeId: vaccineTypeId,
        ),
      );
    state = currentState.copyWith(validityDataList: data);
  }

  void addInoculationDate({
    required DataListType listType,
    required String? stDate,
    required String? edDate,
    required String? setDate,
    required String? selectItem,
    required String? numberName,
  }) {
    final vv = VaccineInoculationDate(
      validityStartDate: stDate,
      validityEndDate: edDate,
      settingDate: setDate,
      statusType: listType == DataListType.schedule
          ? StatusType.reserved
          : StatusType.done,
      selectItem: selectItem,
      numberName: numberName,
    );
    final currentState = state;
    final vData = currentState.validityDataList.last.copyWith();
    List<VaccineInoculationDate> vList;
    if (listType == DataListType.schedule) {
      vList = vData.reservedList.toList()..add(vv);
    } else {
      vList = vData.appliedList.toList()..add(vv);
    }

    final list = currentState.validityDataList.toList()..removeLast();
    state = currentState.copyWith(validityDataList: list);
    addDetailInoculation(
      iType: vData.type,
      kType: vData.dosingType,
      name: vData.vaccineName,
      neededTimes: vData.neededTimes,
      reservedList:
          listType == DataListType.schedule ? vList : vData.reservedList,
      appliedList: listType == DataListType.history ? vList : vData.appliedList,
      itemList: vData.selectItemList,
      vaccineTypeId: vData.vaccineTypeId,
    );
  }

  VaccineDetailData getValidityData(int idx) {
    return state.validityDataList[idx].copyWith();
  }

  List<VaccineInoculationDate> getValidityInoculationData(
      int idx, DataListType dListType) {
    if (state.validityDataList.length <= idx) {
      return <VaccineInoculationDate>[];
    }

    if (dListType == DataListType.schedule) {
      return state.validityDataList[idx].copyWith().reservedList;
    }

    return state.validityDataList[idx].copyWith().appliedList;
  }

  String getValidityDataName(int idx) {
    if (state.validityDataList.length <= idx) {
      return '';
    }

    return state.validityDataList[idx].vaccineName;
  }

  VaccineScheduleType getValidityDataType(int idx) {
    if (state.validityDataList.length <= idx) {
      return VaccineScheduleType.regular;
    }

    return state.validityDataList[idx].type;
  }

  String getValidityDataDosingType(int idx) {
    if (state.validityDataList.length <= idx) {
      return '';
    }

    return state.validityDataList[idx].dosingType;
  }

  // 予約もしくは実績を登録
  void onSetSettingDate({
    required List<String> validityStrList,
    required DataListType dListType,
    required int idx,
    required List<String>? itemList,
  }) {
    final currentState = state;
    final zz = <VaccineInoculationDate>[];
    final iMax = (itemList == null) ? 0 : itemList.length;
    var cnt = 0;
    VaccineDetailData vData;
    if (dListType == DataListType.schedule) {
      vData = currentState.validityDataList[idx].copyWith()
        ..reservedList.forEach((element) {
          var aSetFlag = false;
          if (cnt < validityStrList.length) {
            aSetFlag = true;
          }
          zz.add(VaccineInoculationDate(
            validityStartDate: element.validityStartDate,
            validityEndDate: element.validityEndDate,
            settingDate: aSetFlag ? validityStrList[cnt] : null,
            statusType: element.statusType,
            selectItem: element.selectItem,
            numberName: element.numberName,
          ));
          ++cnt;
        });
    } else {
      vData = currentState.validityDataList[idx].copyWith()
        ..appliedList.forEach((element) {
          var aSetFlag = false;
          if (cnt < validityStrList.length) {
            aSetFlag = true;
          }
          var iSetFlag = false;
          if (cnt < iMax) {
            iSetFlag = true;
          }
          zz.add(VaccineInoculationDate(
            validityStartDate: element.validityStartDate,
            validityEndDate: element.validityEndDate,
            settingDate: aSetFlag ? validityStrList[cnt] : null,
            statusType: element.statusType,
            selectItem: iSetFlag ? itemList![cnt] : null,
            numberName: element.numberName,
          ));
          ++cnt;
        });
    }
    final list = currentState.validityDataList.toList()..removeAt(idx);
    state = currentState.copyWith(validityDataList: list);

    final data = state.validityDataList.toList()
      ..insert(
          idx,
          VaccineDetailData(
            type: vData.type,
            dosingType: vData.dosingType,
            vaccineName: vData.vaccineName,
            neededTimes: vData.neededTimes,
            reservedList: dListType == DataListType.schedule
                ? zz.toList()
                : vData.reservedList,
            appliedList: dListType == DataListType.history
                ? zz.toList()
                : vData.appliedList,
            selectItemList: vData.selectItemList,
            vaccineTypeId: vData.vaccineTypeId,
          ).copyWith());
    state = state.copyWith(validityDataList: data);
  }

  // 予定もしくは実績のクリア
  void onClearSettingDate(DataListType dListType, int idx) {
    onSetSettingDate(
      validityStrList: <String>[],
      dListType: dListType,
      idx: idx,
      itemList: <String>[],
    );
  }

  // display用データへコンバートセット
  void toDisplayData(List<VaccineDetailModel> dataList) {
    state = state.copyWith(vaccineListCount: dataList.length);
    dataList.forEach((data) {
      addDetail(
        iType: getVaccineScheduleType(data.applyType),
        kType: data.wayOfApply,
        name: data.vaccineName,
        neededTimes: data.neededTimes,
        itemList: getItemMap(data.subTypeList),
        vaccineTypeId: data.vaccineId,
      );
      var setNo = 1;
      data.reservedList.forEach((element) {
        if (element.whatTime > setNo) {
          for (var j = 0; j < (element.whatTime - setNo); ++j) {
            addInoculationDateNop(DataListType.schedule, setNo + j);
          }
        }
        addInoculationDate(
          listType: DataListType.schedule,
          stDate: null,
          edDate: null,
          setDate: element.setAt?.yyyymmdd,
          selectItem: null,
          numberName: element.whatTimeName,
        );
        setNo = element.whatTime + 1;
      });
      for (; setNo <= data.neededTimes; ++setNo) {
        addInoculationDateNop(DataListType.schedule, setNo);
      }
      setNo = 1;
      data.appliedList.forEach((element) {
        if (element.whatTime > setNo) {
          for (var j = 0; j < (element.whatTime - setNo); ++j) {
            addInoculationDateNop(DataListType.history, setNo + j);
          }
        }
        String? sName;
        if (data.subTypeList.isNotEmpty && (element.vaccineSubTypeId != null)) {
          data.subTypeList.forEach((subData) {
            if (subData.subTypeId == element.vaccineSubTypeId) {
              sName = subData.subTypeName;
            }
          });
        }
        addInoculationDate(
          listType: DataListType.history,
          stDate: null,
          edDate: null,
          setDate: element.setAt?.yyyymmdd,
          selectItem: sName,
          numberName: element.whatTimeName,
        );
        setNo = element.whatTime + 1;
      });

      for (; setNo <= data.neededTimes; ++setNo) {
        addInoculationDateNop(DataListType.history, setNo);
      }
    });
  }

  void addInoculationDateNop(DataListType listType, int setNo) {
    addInoculationDate(
      listType: listType,
      stDate: null,
      edDate: null,
      setDate: null,
      selectItem: null,
      numberName: setNo.toString() + '回目',
    );
  }

  VaccineScheduleType getVaccineScheduleType(int type) {
    switch (type) {
      case 0:
        return VaccineScheduleType.regular;
      default:
        return VaccineScheduleType.optional;
    }
  }

  Map<String, String> getItemMap(List<VaccineSubTypeModel> list) {
    final map = <String, String>{};
    list.forEach((element) {
      map[element.subTypeId.toString()] = element.subTypeName;
    });
    return map;
  }

  // テスト用データ作成
  void makeTestData() {
    const nNameList = <String>['1回目', '2回目', '3回目', '追加1回目', ''];
    final nowDate = DateTime.now();
    final itemList = {'1': 'ロタリックス（１価）', '2': 'ロタテック（５価）'};
    state = state.copyWith(
        vaccineListCount:
            math.Random().nextInt(5) + 1 + 3); // 接種項目数 0-4 -> 1-5 -> 4-8
    for (var i = 0; i < state.vaccineListCount; ++i) {
      final maxCnt = math.Random().nextInt(4) + 1; // 接種回数 1-4
      addDetail(
        iType: VaccineScheduleType.regular,
        kType: 'B1',
        name: 'ワクチン ${i + 1}',
        neededTimes: maxCnt,
        itemList: (i % 2) == 1 ? itemList : {},
        vaccineTypeId: 0,
      );
      final rCnt = math.Random().nextInt(maxCnt + 1); // 予定入力済み数 0-4
      final yCnt = (rCnt > 0) ? math.Random().nextInt(rCnt) : 0; // 実績入力済み数 0-4
      for (var j = 0; j < maxCnt; ++j) {
        if (j < rCnt) {
          addInoculationDate(
            listType: DataListType.schedule,
            stDate: null,
            edDate: null,
            setDate:
                DateTime(nowDate.year, nowDate.month, nowDate.day + 5).yyyymmdd,
            selectItem: null,
            numberName: nNameList[j],
          );
        } else {
          addInoculationDate(
            listType: DataListType.schedule,
            stDate: null,
            edDate: null,
            setDate: null,
            selectItem: null,
            numberName: nNameList[j],
          );
        }
      }
      for (var k = 0; k < maxCnt; ++k) {
        if (k < yCnt) {
          if ((i % 2) == 1) {
            final itemNo = math.Random().nextInt(itemList.length + 1);
            final itemName = (itemNo == 0) ? null : itemList[itemNo - 1];
            addInoculationDate(
              listType: DataListType.history,
              stDate: null,
              edDate: null,
              setDate: DateTime(nowDate.year, nowDate.month, nowDate.day + 5)
                  .yyyymmdd,
              selectItem: itemName,
              numberName: nNameList[k],
            );
          } else {
            addInoculationDate(
              listType: DataListType.history,
              stDate: null,
              edDate: null,
              setDate: DateTime(nowDate.year, nowDate.month, nowDate.day + 5)
                  .yyyymmdd,
              selectItem: null,
              numberName: nNameList[k],
            );
          }
        } else {
          addInoculationDate(
            listType: DataListType.history,
            stDate: null,
            edDate: null,
            setDate: null,
            selectItem: null,
            numberName: nNameList[k],
          );
        }
      }
    }
  }
}
