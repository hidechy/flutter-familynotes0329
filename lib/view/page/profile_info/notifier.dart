import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../data/model/response/model.dart';
import '../../../data/repository/profile.dart';
import '../../../extension/int.dart';
import '../../../provider/user/notifier.dart';
import '../../../type/gender.dart';
import '../../../util/util.dart';
import 'state.dart';

/// プロフィール情報を管理するプロバイダー
final profileInfoStateProvider =
    AutoDisposeStateNotifierProvider<ProfileInfoNotifier, ProfileInfoState>(
  (ref) {
    return ProfileInfoNotifier(
      ref: ref,
      userState: ref.watch(userStateProvider),
      repository: ref.watch(profileRepositoryProvider),
    )..fetchProfile();
  },
);

class ProfileInfoNotifier extends StateNotifier<ProfileInfoState> {
  ProfileInfoNotifier({
    required this.ref,
    required this.userState,
    required this.repository,
  }) : super(const ProfileInfoLoading());

  final AutoDisposeStateNotifierProviderRef ref;
  final UserState userState;
  final ProfileRepository repository;

  Future<void> fetchProfile() async {
    final userId = (userState as UserStateAuthenticated).userId;

    await repository.fetchProfile(userId: userId).then((response) {
      final data = response.data;
      if (response.status == ResponseStatus.failure || data == null) {
        _showError(response.msg ?? '予期せぬエラーが発生しました');
        return;
      }

      final inputData = ProfileInfoData(
          name: response.data!.nickname ?? '',
          email: response.data!.email ?? '',
          birthday: response.data!.birthday,
          gender: response.data!.gender == null
              ? Gender.man
              : response.data!.gender!.toGender,
          postalCode: response.data!.postalCode ?? '');

      state = ProfileInfoState.loaded(inputData: inputData);
    }).catchError((_) {});
  }

  void _showError(String msg) {
    IHSUtil.showSnackBar(msg: msg);
  }
}
