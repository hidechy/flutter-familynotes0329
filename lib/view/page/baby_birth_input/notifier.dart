import 'package:family_notes/extension/date_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../data/repository/child.dart';
import '../../../extension/time_of_day.dart';
import '../../../provider/app/notifier.dart';
import '../../../provider/user/notifier.dart';
import '../../component/validate_text_field/child_gedner_type.dart';
import '../../component/validate_text_field/type.dart';
import '../../component/validate_text_field/validation.dart';
import 'converter.dart';
import 'state.dart';

/// 出生時情報の入力の状態を管理するプロバイダー
final babyBirthInputStateProvider = AutoDisposeStateNotifierProvider<
    BabyBirthInputNotifier, BabyBirthInputState>((ref) {
  final childRepository = ref.watch(childRepositoryProvider);
  final userState = ref.watch(userStateProvider);
  final appNotifier = ref.read(appStateProvider.notifier);
  return BabyBirthInputNotifier(
    childRepository: childRepository,
    userState: userState,
    ref: ref,
    appNotifier: appNotifier,
  );
});

class BabyBirthInputNotifier extends StateNotifier<BabyBirthInputState> {
  BabyBirthInputNotifier({
    required this.childRepository,
    required this.userState,
    required this.ref,
    required this.appNotifier,
  }) : super(const BabyBirthInputStateLoading());

  final ChildRepository childRepository;
  final UserState userState;
  final AutoDisposeStateNotifierProviderRef ref;
  final AppStateNotifier appNotifier;

  BabyBirthInputStateLoaded get getLoaded => state as BabyBirthInputStateLoaded;
  // バリデーションの種類
  final validateTypeName = ValidateTextFieldType.nickname.name;
  final validateTypeBirthday = ValidateTextFieldType.date.name;
  final validateTypeBirthdayTime = ValidateTextFieldType.childBirthdayTime.name;
  final validateTypeGender = ValidateChildGenderType.name;
  final validateTypeHeight = ValidateTextFieldType.height.name;
  final validateTypeWeight = ValidateTextFieldType.weight.name;
  final validateTypeHead = ValidateTextFieldType.head.name;
  final validateTypeChest = ValidateTextFieldType.chest.name;

  void setup(int childNumber, BabyBirthInputData? initialInputData) {
    final inputData = initialInputData ??
        BabyBirthInputData(
          childList: List.generate(
            childNumber,
            (int i) => BabyBirthDataByChild(index: i),
          ),
        );

    final form = _setNumberOfChildrenFormControl(childNumber, inputData);
    final weekController = getController(
      type: ValidateTextFieldType.week,
      isRequired: false,
      value: inputData.pregnancyWeeks,
      validator: NumValidationType.week.numValid,
    );
    final dayController = getController(
      type: ValidateTextFieldType.day,
      isRequired: false,
      value: inputData.pregnancyDays,
      validator: NumValidationType.day.numValid,
    );

    // 画面全体のFormとして子供情報入力とそれ以外の情報入力をまとめている
    form.addAll({
      ValidateTextFieldType.week.name: weekController,
      ValidateTextFieldType.day.name: dayController,
    });
    state = BabyBirthInputStateLoaded(
      inputData: inputData,
      weekController: weekController,
      dayController: dayController,
      parentFeelingController: TextEditingController(
        text: inputData.parentFeeling,
      ),
      messageController: TextEditingController(
        text: inputData.message,
      ),
      freeCommentController: TextEditingController(
        text: inputData.freeComment,
      ),
      form: FormGroup(form),
    );
  }

  // 子ども毎の出生情報の更新
  void onChangedBabyBirthDataByChild(int index, BabyBirthDataByChild data) {
    final _state = getLoaded;
    final childList = [..._state.inputData!.childList];
    childList[index] = data;
    state = _state.copyWith(
      inputData: _state.inputData!.copyWith(
        childList: childList,
      ),
    );
  }

  // 妊娠期間の更新（週）
  void onChangedPregnancyWeeks(String text) {
    final _state = getLoaded;
    _state.weekController!.updateValue(text);
    state = _state.copyWith(
      inputData: _state.inputData!.copyWith(
        pregnancyWeeks: text,
      ),
    );
  }

  // 妊娠期間の更新（日）
  void onChangedPregnancyWeekDays(String text) {
    final _state = getLoaded;
    _state.dayController!.updateValue(text);
    state = _state.copyWith(
      inputData: _state.inputData!.copyWith(
        pregnancyDays: text,
      ),
    );
  }

  // 出産した場所の更新
  void onChangedAddress(String text) {
    final _state = getLoaded;
    state = _state.copyWith(
      inputData: _state.inputData!.copyWith(
        address: text,
      ),
    );
  }

  // 医師又は助産師の更新
  void onChangedDoctor(String text) {
    final _state = getLoaded;
    state = _state.copyWith(
      inputData: _state.inputData!.copyWith(
        doctor: text,
      ),
    );
  }

  // ママ、パパの気持ちの更新
  void onChangedParentFeeling(String text) {
    final _state = getLoaded;
    state = _state.copyWith(
      inputData: _state.inputData!.copyWith(
        parentFeeling: text,
      ),
    );
  }

  // 赤ちゃんへのメッセージの更新
  void onChangedMessage(String text) {
    final _state = getLoaded;
    state = _state.copyWith(
      inputData: _state.inputData!.copyWith(
        message: text,
      ),
    );
  }

  // 自由コメント欄の更新
  void onChangedFreeComment(String text) {
    final _state = getLoaded;
    state = _state.copyWith(
      inputData: _state.inputData!.copyWith(
        freeComment: text,
      ),
    );
  }

  // 登録
  Future<void> onTapRegister({
    required Function(int) onSuccess,
    required Function(String) onFailure,
    bool isEdit = false,
  }) async {
    final _state = getLoaded;
    final _inputData = _state.inputData!;
    final childBirthdayList =
        _inputData.childList.map((child) => child.birthday).toList();
    if (childBirthdayList.contains(null)) {
      onFailure('未入力の項目があります');
      return;
    }

    if (_state.saving) {
      return;
    }

    state = _state.copyWith(saving: true);

    final _selectedChildId =
        userState.mapOrNull(authenticated: (state) => state.selectedChildId)!;

    final request = ChildBirthRequestConverter.convertFrom(
      inputData: _inputData,
      selectedChildId: _selectedChildId,
    );

    // ここのAPIでは、インジケーターを表示しない（次の画面に影響が出る）
    appNotifier.unShowIndicator();

    final response = await childRepository
        .birthChild(request: request, isEdit: isEdit)
        .catchError((_) {});

    appNotifier.showIndicator();

    final addedChildList = response.data?.list ?? [];
    final addedChildId = addedChildList.first.id;

    onSuccess(addedChildId);
  }

  /// 出産日Controllerの値更新
  void onChangedBirthdayController(int index) {
    final child = getLoaded.inputData!.childList[index];
    getLoaded.form.controls[createValidateKey(validateTypeBirthday, index)]!
        .updateValue(child.birthday.getDateControllerText);
  }

  /// 出産時刻Controllerの値更新
  void onChangedBirthdayTimeController(int index) {
    final child = getLoaded.inputData!.childList[index];
    getLoaded.form.controls[createValidateKey(validateTypeBirthdayTime, index)]!
        .updateValue(child.birthdayTime.getBirthdayTimeControllerText);
  }

  void showGenderValidateMessage() {
    state = getLoaded.copyWith(isShowGenderValidateMessage: true);
  }

  void hideGenderValidateMessage() {
    state = getLoaded.copyWith(isShowGenderValidateMessage: false);
  }

  /// 出産子供人数分の各項目の入力コントローラーの生成
  Map<String, AbstractControl<dynamic>> _setNumberOfChildrenFormControl(
    int childNumber,
    BabyBirthInputData inputData,
  ) {
    final form = <String, AbstractControl<dynamic>>{};
    for (var i = 0; i < childNumber; i++) {
      final childData = inputData.childList[i];
      final birthday = childData.birthday;
      final validateKeyName = createValidateKey(validateTypeName, i);
      final validateKeyBirthday = createValidateKey(validateTypeBirthday, i);
      final validateKeyTime = createValidateKey(validateTypeBirthdayTime, i);
      final validateKeyGender = createValidateKey(validateTypeGender, i);
      final validateKeyHeight = createValidateKey(validateTypeHeight, i);
      final validateKeyWeight = createValidateKey(validateTypeWeight, i);
      final validateKeyHead = createValidateKey(validateTypeHead, i);
      final validateKeyChest = createValidateKey(validateTypeChest, i);

      final nameController = getController(
        type: ValidateTextFieldType.nickname,
        value: childData.name,
      );
      final birthdayController = getController(
        type: ValidateTextFieldType.nickname,
        value: birthday.getDateControllerText,
      );
      final birthdayTimeController = getController(
        type: ValidateTextFieldType.childBirthdayTime,
        value: childData.birthdayTime.getBirthdayTimeControllerText,
      );
      final genderController = ValidateChildGenderType.getController(
        value: childData.gender,
      );
      final heightController = getController(
        type: ValidateTextFieldType.height,
        isRequired: false,
        value: childData.height,
        validator: NumValidationType.height.numValid,
      );
      final weightController = getController(
        type: ValidateTextFieldType.childGramsWeight,
        isRequired: false,
        value: childData.weight,
        validator: NumValidationType.grams.gramsValid,
      );
      final headController = getController(
        type: ValidateTextFieldType.head,
        isRequired: false,
        value: childData.head,
        validator: NumValidationType.head.numValid,
      );
      final chestController = getController(
        type: ValidateTextFieldType.chest,
        isRequired: false,
        value: childData.chest,
        validator: NumValidationType.chest.numValid,
      );
      form.addAll({
        validateKeyName: nameController,
        validateKeyBirthday: birthdayController,
        validateKeyTime: birthdayTimeController,
        validateKeyGender: genderController,
        validateKeyHeight: heightController,
        validateKeyWeight: weightController,
        validateKeyHead: headController,
        validateKeyChest: chestController,
      });
    }

    return form;
  }

  String createValidateKey(String key, int i) {
    return '${key}_$i';
  }
}
