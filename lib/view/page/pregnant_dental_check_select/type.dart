import 'package:freezed_annotation/freezed_annotation.dart';

part 'type.freezed.dart';

@freezed
class PregnantDentalCheckInputType with _$PregnantDentalCheckInputType {
  /// 新規登録
  const factory PregnantDentalCheckInputType.new() =
      PregnantDentalCheckInputNew;

  /// 編集
  const factory PregnantDentalCheckInputType.edit({
    required int motherDentalCheckupRecordId,
  }) =
      PregnantDentalCheckInputEdit;
}
