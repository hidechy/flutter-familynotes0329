import 'package:family_notes/data/local/local_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../http/client.dart';
import '../http/path.dart';
import '../model/code_publish/model.dart';
import '../model/response/model.dart';
import '../model/user/model.dart';
import '../request/sign_up/request.dart';

/// ユーザー認証関連のRepository
abstract class AuthRepository {
  /// ログイン
  Future<IHSResponse<UserModel>> login({
    required String email,
    required String password,
  });

  /// ログアウト
  Future<IHSResponse<Empty>> logout();

  /// 認証コード発行（サインアップ）
  Future<IHSResponse<CodePublishModel>> codePublish({
    required String email,
  });

  /// 認証コード確認（サインアップ）
  Future<IHSResponse<Empty>> codeConfirm({
    required String email,
    required String authCode,
  });

  /// 認証コード発行（メアド変更）
  Future<IHSResponse<CodePublishModel>> codePublishForEmailChange({
    required String email,
  });

  /// 認証コード確認（メアド変更）
  Future<IHSResponse<Empty>> codeConfirmForEmailChange({
    required String email,
    required String authCode,
  });

  /// 認証コード発行（パスワード変更）
  Future<IHSResponse<CodePublishModel>> codePublishForPasswordChange({
    required String email,
  });

  /// 認証コード確認（パスワード変更）
  Future<IHSResponse<Empty>> codeConfirmForPasswordChange({
    required String email,
    required String authCode,
    required String newPassword,
  });

  /// パスワード変更
  Future<IHSResponse<Empty>> changePassword({
    required String oldPassword,
    required String newPassword,
  });

  /// サインアップ
  Future<IHSResponse<UserModel>> signUp({
    required SignUpRequest request,
  });

  /// 退会
  Future<IHSResponse<Empty>> cancel();
}

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({
    required this.client,
  });

  final IHSHttpClient client;

  @override
  Future<IHSResponse<UserModel>> login({
    required String email,
    required String password,
  }) async {
    final response = await client.post(
      IHSAPIPath.login,
      body: {
        'email': email,
        'password': password,
      },
    );
    return IHSResponse<UserModel>.fromJson(
      response,
      (Object? json) {
        if (response['data'] == null) {
          return null;
        }
        return UserModel.fromJson(json! as Map<String, dynamic>);
      },
    );
  }

  @override
  Future<IHSResponse<Empty>> logout() async {
    final response = await client.post(
      IHSAPIPath.logout,
      body: {'fcm_token': syncPrefString[LocalKeyType.deviceToken]},
    );

    return IHSResponse<Object>.fromJson(
      response,
      (Object? json) {
        return null;
      },
    );
  }

  @override
  Future<IHSResponse<CodePublishModel>> codePublish({
    required String email,
  }) async {
    final response = await client.post(
      IHSAPIPath.codePublish,
      body: {
        'email': email,
      },
    );

    return IHSResponse<CodePublishModel>.fromJson(
      response,
      (Object? json) {
        if (response['data'] == null) {
          return null;
        }
        return CodePublishModel.fromJson(json! as Map<String, dynamic>);
      },
    );
  }

  @override
  Future<IHSResponse<Empty>> codeConfirm({
    required String email,
    required String authCode,
  }) async {
    final response = await client.post(
      IHSAPIPath.codeConfirm,
      body: {
        'email': email,
        'auth_code': authCode,
      },
    );

    return IHSResponse<Empty>.fromJson(
      response,
      (Object? json) => null,
    );
  }

  @override
  Future<IHSResponse<CodePublishModel>> codePublishForEmailChange({
    required String email,
  }) async {
    final response = await client.post(
      IHSAPIPath.mailChangeCodePublish,
      body: {'email': email},
    );

    return IHSResponse<CodePublishModel>.fromJson(
      response,
      (Object? json) {
        if (response['data'] == null) {
          return null;
        }
        return CodePublishModel.fromJson(json! as Map<String, dynamic>);
      },
    );
  }

  @override
  Future<IHSResponse<Empty>> codeConfirmForEmailChange({
    required String email,
    required String authCode,
  }) async {
    final response = await client.post(
      IHSAPIPath.mailChangeCodeConfirm,
      body: {
        'email': email,
        'auth_code': authCode,
      },
    );

    return IHSResponse<Empty>.fromJson(
      response,
      (Object? json) => null,
    );
  }

  @override
  Future<IHSResponse<Empty>> changePassword({
    required String oldPassword,
    required String newPassword,
  }) async {
    final response = await client.post(
      IHSAPIPath.passwordChange,
      body: {
        'old_password': oldPassword,
        'new_password': newPassword,
      },
    );

    return IHSResponse<Empty>.fromJson(
      response,
      (Object? json) => null,
    );
  }

  @override
  Future<IHSResponse<CodePublishModel>> codePublishForPasswordChange({
    required String email,
  }) async {
    final response = await client.post(
      IHSAPIPath.passwordForgottenCodePublish,
      body: {
        'email': email,
      },
    );

    return IHSResponse<CodePublishModel>.fromJson(
      response,
      (Object? json) {
        if (response['data'] == null) {
          return null;
        }
        return CodePublishModel.fromJson(json! as Map<String, dynamic>);
      },
    );
  }

  @override
  Future<IHSResponse<Empty>> codeConfirmForPasswordChange({
    required String email,
    required String authCode,
    required String newPassword,
  }) async {
    final response = await client.post(
      IHSAPIPath.passwordForgottenCodeConfirm,
      body: {
        'email': email,
        'auth_code': authCode,
        'new_password': newPassword,
      },
    );

    return IHSResponse<Empty>.fromJson(
      response,
      (Object? json) => null,
    );
  }

  @override
  Future<IHSResponse<UserModel>> signUp({
    required SignUpRequest request,
  }) async {
    final response = await client.post(
      IHSAPIPath.signUp,
      body: request.toJson(),
    );

    return IHSResponse<UserModel>.fromJson(
      response,
      (Object? json) {
        if (response['data'] == null) {
          return null;
        }
        return UserModel.fromJson(json! as Map<String, dynamic>);
      },
    );
  }

  @override
  Future<IHSResponse<Empty>> cancel() async {
    final response = await client.post(IHSAPIPath.cancelMember);

    return IHSResponse<Empty>.fromJson(
      response,
      (Object? json) => null,
    );
  }
}

final Provider<AuthRepository> authRepositoryProvider =
    Provider<AuthRepository>(
  (ProviderRef<AuthRepository> ref) {
    final client = ref.read(httpClientProvider);
    return AuthRepositoryImpl(
      client: client,
    );
  },
);
