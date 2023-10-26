import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../profile_info/state.dart';

part 'state.freezed.dart';

@freezed
class ProfileEditState with _$ProfileEditState {
  const factory ProfileEditState({
    ProfileInfoData? inputData,
    @Default(false) bool saving,

    // バリデーション用
    FormControl<String>? nameController,
    FormControl<String>? postalCodeController,
  }) = _ProfileEditState;
}
