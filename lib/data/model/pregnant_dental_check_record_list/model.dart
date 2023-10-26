import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

/// 妊婦産後歯科健診記録一覧から返却されるデータモデル
@freezed
class PregnantDentalCheckRecordListModel
    with _$PregnantDentalCheckRecordListModel {
  const factory PregnantDentalCheckRecordListModel({
    required List<PregnantDentalCheckRecordModel> list,
  }) = _PregnantDentalCheckRecordListModel;

  factory PregnantDentalCheckRecordListModel.fromJsoon(
      Map<String, dynamic> json) {
    final recordList = json['list'] as List<dynamic>;
    final list = recordList.map((e) {
      final record = e as Map<String, dynamic>;
      return PregnantDentalCheckRecordModel.fromJson(record);
    }).toList();

    return PregnantDentalCheckRecordListModel(list: list);
  }
}

@freezed
class PregnantDentalCheckRecordModel with _$PregnantDentalCheckRecordModel {
  const factory PregnantDentalCheckRecordModel({
    @JsonKey(name: 'mother_dental_checkup_record_id')
        required int motherDentalCheckupRecordId,
    @JsonKey(name: 'child_id') required int childId,
    @JsonKey(name: 'checkup_day') required String checkupDay,
  }) = _PregnantDentalCheckRecordModel;

  factory PregnantDentalCheckRecordModel.fromJson(Map<String, dynamic> json) =>
      _$PregnantDentalCheckRecordModelFromJson(json);
}
