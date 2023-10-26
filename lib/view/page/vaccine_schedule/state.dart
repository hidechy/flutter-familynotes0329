import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import './type.dart';

part 'state.freezed.dart';

@freezed
class VaccineDetailData with _$VaccineDetailData {
  factory VaccineDetailData({
    @Default(VaccineScheduleType.regular) VaccineScheduleType type, //定期・任意
    @Default('') String dosingType, // 経口・注射・生
    @Default('') String vaccineName, // ワクチン名
    @Default(1) int neededTimes, // 必要回数
    @Default(<VaccineInoculationDate>[])
        List<VaccineInoculationDate> reservedList, // 期間 and 予定o
    @Default(<VaccineInoculationDate>[])
        List<VaccineInoculationDate> appliedList, // 期間 and 実績
    @Default({})
        Map<String, String> selectItemList, // 種類リスト（key=ワクチンサブタイプId,val=name）
    @Default(0) int vaccineTypeId, // ワクチンタイプId
  }) = _VaccineDetailData;
}

@freezed
class VaccineInoculationDate with _$VaccineInoculationDate {
  factory VaccineInoculationDate({
    String? validityStartDate, // 有効期間開始日
    String? validityEndDate, // 有効期間終了日
    String? settingDate, // 設定日
    StatusType? statusType, // 実績=Y(Yes), 予定=R(Reserved)
    String? selectItem, // 種類（pullDown select item）
    String? numberName, // 「XX回目」の名称
  }) = _VaccineInoculationDate;
}

@freezed
class VaccineDetailDataState with _$VaccineDetailDataState {
  factory VaccineDetailDataState({
    @Default(false) bool acquiring,
    // 現在表示タブのポジション
    @Default(0) int tabItemPosition,
    // 接種リストの総数
    @Default(0) int vaccineListCount,
    // 予定も履歴も、結局は全接種
    @Default(<VaccineDetailData>[]) List<VaccineDetailData> validityDataList,
  }) = _VaccineDetailDataState;
  VaccineDetailDataState._();
}
