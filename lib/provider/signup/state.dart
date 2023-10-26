import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class SignUpState with _$SignUpState {
  /// 初期状態
  const factory SignUpState.init() = SignUpStateInit;

  /// サインアップ手続き中
  const factory SignUpState.inProcess({
    String? nickname,
    String? email,
    String? password,
    String? birthday,
    int? gender, // 男:1, 女:2,
    String? postalCode,
    // 同意したプラポリのID
    int? privacyPolicyConsentId,
    // 同意した利用規約のID
    int? serviceTermsConsentId,
    SignUpChild? child,
  }) = SignUpStateInProcess;
}

@freezed
class SignUpChild with _$SignUpChild {
  const factory SignUpChild.baby({
    @Default('') String nickname,
    @Default('') String birthScheduledDate,
  }) = SignUpChildBaby;

  const factory SignUpChild.child({
    @Default('') String nickname,
    @Default(0) int gender, // 男:1, 女:2,
    @Default('') String birthday,
  }) = SignUpChildChild;
}
