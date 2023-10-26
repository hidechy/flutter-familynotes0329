import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../type/gender.dart';

part 'state.freezed.dart';

@freezed
class ProfileInfoState with _$ProfileInfoState {
  const factory ProfileInfoState.loading() = ProfileInfoLoading;

  const factory ProfileInfoState.loaded({
    ProfileInfoData? inputData,
    @Default(false) bool saving,
  }) = ProfileInfoLoaded;
}

@freezed
class ProfileInfoData with _$ProfileInfoData {
  const factory ProfileInfoData({
    /// 名前（ニックネーム）
    @Default('') String name,

    /// 生年月日
    DateTime? birthday,

    /// 性別
    @Default(Gender.woman) Gender gender,

    /// 郵便番号
    @Default('') String postalCode,

    /// メールアドレス
    @Default('') String email,
  }) = _ProfileInfoData;
}
