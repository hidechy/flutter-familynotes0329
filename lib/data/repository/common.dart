import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../http/client.dart';
import '../http/path.dart';
import '../model/config/model.dart';
import '../model/consent/model.dart';
import '../model/response/model.dart';
import '../request/consent/request.dart';

/// 汎用Repository
abstract class CommonRepository {
  /// 共通コンフィグ取得
  Future<IHSResponse<ConfigModel>> fetchConfig();

  /// 同意内容取得
  Future<IHSResponse<ConsentListModel>> fetchConsentContents();

  /// ユーザー同意内容取得
  Future<IHSResponse<ConsentListModel>> fetchUserConsentContents();

  /// ユーザー同意内容更新
  Future<IHSResponse<Empty>> updateConsentContents({
    required ConsentContentsConsentRequest request,
  });

  /// FcmToken登録
  Future<IHSResponse<Empty>> addFcmToken({required String fcmToken});
}

class CommonRepositoryImpl implements CommonRepository {
  CommonRepositoryImpl({
    required this.client,
  });

  final IHSHttpClient client;

  @override
  Future<IHSResponse<ConfigModel>> fetchConfig() async {
    final response = await client.post(
      IHSAPIPath.config,
    );
    return IHSResponse<ConfigModel>.fromJson(
      response,
      (Object? json) {
        if (response['data'] == null) {
          return null;
        }
        return ConfigModel.fromJson(json! as Map<String, dynamic>);
      },
    );
  }

  @override
  Future<IHSResponse<ConsentListModel>> fetchConsentContents() async {
    final response = await client.post(
      IHSAPIPath.consentContents,
    );
    return IHSResponse<ConsentListModel>.fromJson(
      response,
      (Object? json) {
        if (response['data'] == null) {
          return const ConsentListModel(list: []);
        }
        return ConsentListModel.fromJson(json! as Map<String, dynamic>);
      },
    );
  }

  @override
  Future<IHSResponse<ConsentListModel>> fetchUserConsentContents() async {
    final response = await client.post(
      IHSAPIPath.consentContentsNewer,
    );
    return IHSResponse<ConsentListModel>.fromJson(
      response,
      (Object? json) {
        if (response['data'] == null) {
          return const ConsentListModel(list: []);
        }

        return ConsentListModel.fromJson(json! as Map<String, dynamic>);
      },
    );
  }

  @override
  Future<IHSResponse<Empty>> updateConsentContents({
    required ConsentContentsConsentRequest request,
  }) async {
    final response = await client.post(
      IHSAPIPath.consentContentsConsent,
      body: request.toJson(),
    );
    return IHSResponse<ConsentListModel>.fromJson(
      response,
      (Object? json) => null,
    );
  }

  @override
  Future<IHSResponse<Empty>> addFcmToken({required String fcmToken}) async {
    final response = await client.post(
      IHSAPIPath.addFcmToken,
      body: {'fcm_token': fcmToken},
    );

    return IHSResponse<Empty>.fromJson(
      response,
      (Object? json) => null,
    );
  }
}

final Provider<CommonRepository> commonRepositoryProvider =
    Provider<CommonRepository>(
  (ProviderRef<CommonRepository> ref) {
    final client = ref.read(httpClientProvider);
    return CommonRepositoryImpl(
      client: client,
    );
  },
);
