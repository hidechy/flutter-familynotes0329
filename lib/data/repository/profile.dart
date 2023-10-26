import 'package:family_notes/data/request/profile_edit/request.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../http/client.dart';
import '../http/path.dart';
import '../model/profile/model.dart';
import '../model/response/model.dart';

/// プロフィール関連のRepository
abstract class ProfileRepository {
  /// プロフィール取得
  Future<IHSResponse<ProfileModel>> fetchProfile({
    required int userId,
  });

  /// プロフィールの更新
  Future<IHSResponse<Empty>> editProfile({
    required ProfileEditRequest request,
  });
}

class ProfileRepositoryImpl implements ProfileRepository {
  ProfileRepositoryImpl({
    required this.client,
  });

  final IHSHttpClient client;

  @override
  Future<IHSResponse<ProfileModel>> fetchProfile({required int userId}) async {
    final response = await client.post(
      IHSAPIPath.profileDetail,
      body: {'user_id': userId},
    );

    return IHSResponse<ProfileModel>.fromJson(
      response,
      (Object? json) {
        if (response['data'] == null) {
          return null;
        }
        return ProfileModel.fromJson(json! as Map<String, dynamic>);
      },
    );
  }

  @override
  Future<IHSResponse<Empty>> editProfile(
      {required ProfileEditRequest request}) async {
    final response = await client.post(
      IHSAPIPath.profileEdit,
      body: request.toJson(),
    );

    return IHSResponse<Empty>.fromJson(
      response,
      (Object? json) => null,
    );
  }
}

final Provider<ProfileRepository> profileRepositoryProvider =
    Provider<ProfileRepository>(
  (ProviderRef<ProfileRepository> ref) {
    final client = ref.read(httpClientProvider);
    return ProfileRepositoryImpl(
      client: client,
    );
  },
);
