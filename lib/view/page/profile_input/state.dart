import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../profile_info/state.dart';

part 'state.freezed.dart';

@freezed
class ProfileInputState with _$ProfileInputState {
  const factory ProfileInputState({
    @Default(ProfileInfoData()) ProfileInfoData inputData,

    // バリデーション用
    FormControl<String>? nicknameController,
    FormControl<String>? postalCodeController,
  }) = _ProfileInputState;
}
