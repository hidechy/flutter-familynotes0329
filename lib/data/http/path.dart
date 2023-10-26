enum IHSAPIPath {
  /// コンフィグ値取得
  config,

  /// ログイン
  login,

  /// 認証コード発行
  codePublish,

  /// コード認証
  codeConfirm,

  /// サインアップ
  signUp,

  /// 同意内容確認
  consentContents,

  /// ログアウト
  logout,

  /// 退会
  cancelMember,

  /// FcmToken登録
  addFcmToken,

  /// コード発行（パスワードお忘れ）
  passwordForgottenCodePublish,

  /// コード認証（パスワードお忘れ）
  passwordForgottenCodeConfirm,

  /// コード発行（メール変更）
  mailChangeCodePublish,

  /// コード認証（メール変更）
  mailChangeCodeConfirm,

  /// パスワード変更
  passwordChange,

  /// ユーザ同意内容取得（ログイン時に使用）
  concentContentsNewer,

  /// ユーザ同意内容取得（起動時に使用）
  consentContentsNewer,

  /// ユーザ同意内容更新（ログイン時に使用）
  consentContentsConsent,

  /// 手帳選択
  childList,

  /// 胎児取得
  babyDetail,

  /// 胎児保存
  babySave,

  /// 胎児削除
  babyDelete,

  /// お子さま取得,
  childDetail,

  /// お子さま保存,
  childSave,

  /// 誕生時子供登録,
  childBirth,

  // 誕生後子供編集,
  childEdit,

  /// お子さま削除,
  childDelete,

  /// プロフィール取得,
  profileDetail,

  /// プロフィール保存,
  profileEdit,

  /// 妊婦健診記録一覧取得,
  checkupRecord,

  /// 妊婦健診記録詳細取得,
  checkupRecordDetail,

  /// 妊婦体重記録一覧
  pregnantWeightRecordList,

  /// 妊婦体重記録保存
  pregnantWeightRecordSave,

  /// 妊婦体重記録削除
  pregnantWeightRecordDelete,

  /// 妊婦体重フラグ曲線データ取得
  pregnantWeightRecordGraph,

  /// 乳幼児身体記録一覧
  childBodyRecordList,

  /// 乳幼児身体記録保存
  childBodyRecordSave,

  /// 乳幼児身体記録削除
  childBodyRecordDelete,

  /// 乳幼児身体発育曲線データ取得
  childBodyRecordGraph,

  /// 妊婦健診記録詳細取得,
  checkupRecordSave,

  /// 妊婦健診記録詳細取得,
  checkupRecordDelete,

  /// 妊婦産後歯科健診記録保存
  checkupRecordMotherDentalSave,

  /// 妊婦産後歯科健診記録一覧取得
  checkupRecordMotherDentalList,

  /// 妊婦産後歯科健診記録詳細取得
  checkupRecordMotherDentalDetail,

  /// 妊婦産後歯科健診記録削除
  checkupRecordMotherDentalDelete,

  /// 乳幼児健診記録一覧取得,
  childCheckupRecord,

  /// 乳幼児健診マスタ取得,
  childCheckupTypes,

  /// 生活習慣設問取得
  lifeHabitCheckupCheckSheetGetQuestions,

  /// 生活習慣設問回答保存
  lifeHabitCheckupCheckSheetSave,

  /// 生活習慣設問回答結果取得
  lifeHabitCheckupCheckSheetGetResult,

  /// 生活習慣設問回答履歴取得
  lifeHabitCheckupCheckSheetGetHistory,

  /// 乳幼児健診記録登録,
  childCheckupRecordSave,

  /// 乳幼児健診記録詳細取得,
  childCheckupRecordDetail,

  /// 乳幼児健診記録削除
  childCheckupRecordDelete,

  /// PUSH通知設定情報取得
  notificationPull,

  /// PUSH通知設定情報更新
  notificationChange,

  /// 予防接種一覧取得
  vaccinationList,

  /// 予防接種サブタイプ取得
  vaccinationSubtypeList,

  /// 予防接種状況削除
  vaccinationStatusDelete,

  /// 予防接種状況保存
  vaccinationStatusSave,

  /// 予防接種状況保存複数
  vaccinationStatusMultiSave,

  /// 発達チェックシート取得
  checkSheetGrowthDetail,

  /// 発達チェックシート保存
  checkSheetGrowthSave,

  /// サポートチェックシート取得
  checkSheetSupportDetail,

  /// サポートチェックシート保存
  checkSheetSupportSave,

  /// お知らせ一覧取得
  noticeList,

  /// お知らせのカテゴリー一覧取得
  noticeCategoryList,

  /// お知らせ詳細取得
  noticeDetail,

  /// お知らせ新着確認
  readConfirmation,
}

extension IHSAPIPathExtension on IHSAPIPath {
  String get value {
    switch (this) {
      case IHSAPIPath.config:
        return 'common/config';
      case IHSAPIPath.login:
        return 'common/login';
      case IHSAPIPath.codePublish:
        return 'common/codePublish';
      case IHSAPIPath.codeConfirm:
        return 'common/codeConfirm';
      case IHSAPIPath.signUp:
        return 'common/signUp';
      case IHSAPIPath.consentContents:
        return 'common/consentContents/list';
      case IHSAPIPath.logout:
        return 'common/logout';
      case IHSAPIPath.cancelMember:
        return 'common/cancelMember';
      case IHSAPIPath.addFcmToken:
        return 'common/fcmToken';
      case IHSAPIPath.passwordForgottenCodePublish:
        return 'common/passwordForgotten/codePublish';
      case IHSAPIPath.passwordForgottenCodeConfirm:
        return 'common/passwordForgotten/codeConfirm';
      case IHSAPIPath.mailChangeCodePublish:
        return 'common/mailChange/codePublish';
      case IHSAPIPath.mailChangeCodeConfirm:
        return 'common/mailChange/codeConfirm';
      case IHSAPIPath.concentContentsNewer:
        return 'common/concentContents/newer';
      case IHSAPIPath.passwordChange:
        return 'common/passwordChange';
      case IHSAPIPath.consentContentsNewer:
        return 'common/consentContents/newer';
      case IHSAPIPath.consentContentsConsent:
        return 'common/consentContents/consent';
      case IHSAPIPath.childList:
        return 'common/child/list';
      case IHSAPIPath.babySave:
        return 'common/baby/save';
      case IHSAPIPath.babyDetail:
        return 'common/baby/detail';
      case IHSAPIPath.babyDelete:
        return 'common/baby/delete';
      case IHSAPIPath.childSave:
        return 'common/child/save';
      case IHSAPIPath.childDetail:
        return 'common/child/detail';
      case IHSAPIPath.childDelete:
        return 'common/child/delete';
      case IHSAPIPath.profileDetail:
        return 'common/profile/detail';
      case IHSAPIPath.profileEdit:
        return 'common/profile/edit';
      case IHSAPIPath.checkupRecord:
        return 'checkupRecord/mother/list';
      case IHSAPIPath.checkupRecordDetail:
        return 'checkupRecord/mother/detail';
      case IHSAPIPath.pregnantWeightRecordList:
        return 'motherWeightRecord/list';
      case IHSAPIPath.pregnantWeightRecordSave:
        return 'motherWeightRecord/save';
      case IHSAPIPath.pregnantWeightRecordDelete:
        return 'motherWeightRecord/delete';
      case IHSAPIPath.pregnantWeightRecordGraph:
        return 'motherWeightRecord/graph';
      case IHSAPIPath.childBodyRecordSave:
        return 'childBodyRecord/save';
      case IHSAPIPath.childBodyRecordDelete:
        return 'childBodyRecord/delete';
      case IHSAPIPath.childBodyRecordList:
        return 'childBodyRecord/list';
      case IHSAPIPath.childBodyRecordGraph:
        return 'childBodyRecord/graph';
      case IHSAPIPath.checkupRecordSave:
        return 'checkupRecord/mother/save';
      case IHSAPIPath.checkupRecordDelete:
        return 'checkupRecord/mother/delete';
      case IHSAPIPath.childBirth:
        return 'common/child/birth';
      case IHSAPIPath.childEdit:
        return 'common/child/edit';
      case IHSAPIPath.checkupRecordMotherDentalSave:
        return 'checkupRecord/motherDental/save';
      case IHSAPIPath.checkupRecordMotherDentalList:
        return 'checkupRecord/motherDental/list';
      case IHSAPIPath.checkupRecordMotherDentalDetail:
        return 'checkupRecord/motherDental/detail';
      case IHSAPIPath.checkupRecordMotherDentalDelete:
        return 'checkupRecord/motherDental/delete';
      case IHSAPIPath.childCheckupRecord:
        return 'checkupRecord/child/list';
      case IHSAPIPath.childCheckupTypes:
        return 'common/childCheckupType/list';
      case IHSAPIPath.childCheckupRecordSave:
        return 'checkupRecord/child/save';
      case IHSAPIPath.lifeHabitCheckupCheckSheetGetQuestions:
        return 'lifeHabitCheckup/checkSheet/getQuestions';
      case IHSAPIPath.lifeHabitCheckupCheckSheetSave:
        return 'lifeHabitCheckup/checkSheet/save';
      case IHSAPIPath.lifeHabitCheckupCheckSheetGetResult:
        return 'lifeHabitCheckup/checkSheet/getResult';
      case IHSAPIPath.lifeHabitCheckupCheckSheetGetHistory:
        return 'lifeHabitCheckup/checkSheet/getHistory';
      case IHSAPIPath.childCheckupRecordDetail:
        return 'checkupRecord/child/detail';
      case IHSAPIPath.childCheckupRecordDelete:
        return 'checkupRecord/child/delete';
      case IHSAPIPath.notificationPull:
        return 'notification/pull';
      case IHSAPIPath.notificationChange:
        return 'notification/change';
      case IHSAPIPath.vaccinationList:
        return 'vaccine/type/list';
      case IHSAPIPath.vaccinationSubtypeList:
        return 'vaccine/subtype/list';
      case IHSAPIPath.vaccinationStatusDelete:
        return 'vaccine/status/delete';
      case IHSAPIPath.vaccinationStatusSave:
        return 'vaccine/status/save';
      case IHSAPIPath.vaccinationStatusMultiSave:
        return 'vaccine/status/multi/save';
      case IHSAPIPath.checkSheetGrowthDetail:
        return 'checkSheet/growth/detail';
      case IHSAPIPath.checkSheetGrowthSave:
        return 'checkSheet/growth/save';
      case IHSAPIPath.checkSheetSupportDetail:
        return 'checkSheet/support/detail';
      case IHSAPIPath.checkSheetSupportSave:
        return 'checkSheet/support/save';
      case IHSAPIPath.noticeList:
        return 'notice/list';
      case IHSAPIPath.noticeCategoryList:
        return 'notice/categoryList';
      case IHSAPIPath.noticeDetail:
        return 'notice/detail';
      case IHSAPIPath.readConfirmation:
        return 'notice/readConfirmation';
    }
  }

  /// 認証情報（ユーザーID, トークン）をクエリに含めるか
  bool get needCredentialsInHeader {
    // ignore: missing_enum_constant_in_switch
    switch (this) {
      case IHSAPIPath.config:
      case IHSAPIPath.login:
      case IHSAPIPath.codePublish:
      case IHSAPIPath.codeConfirm:
      case IHSAPIPath.signUp:
      case IHSAPIPath.consentContents:
      case IHSAPIPath.passwordForgottenCodePublish:
      case IHSAPIPath.passwordForgottenCodeConfirm:
      case IHSAPIPath.childCheckupTypes:
        return false;
    }
    return true;
  }
}
