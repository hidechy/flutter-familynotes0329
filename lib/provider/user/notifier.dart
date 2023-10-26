import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '/data/local/local_client.dart';
import '/data/model/response/model.dart';
import '/data/model/user/model.dart';
import '/data/repository/auth.dart';
import '/provider/child/notifier.dart';
import '../../data/repository/child.dart';
import '../../view/component/child_list_item/state.dart';
import '../../view/page/bottom_bar/notifier.dart';
import '../../view/style/texts.dart';

part 'notifier.freezed.dart';

@freezed
class UserState with _$UserState {
  /// 認証状態未判定（アプリ初回起動時）
  const factory UserState.init() = UserStateInit;

  /// 未認証
  const factory UserState.unauthenticated() = UserStateUnauthenticated;

  /// 認証済み
  const factory UserState.authenticated({
    /// ユーザーID
    required int userId,

    /// アクセストークン
    required String accessToken,

    /// 選択済み子どもID
    int? selectedChildId,
  }) = UserStateAuthenticated;
}

/// ユーザーの状態を管理するプロバイダ
final userStateProvider = StateNotifierProvider<UserStateNotifier, UserState>((ref) {
  return UserStateNotifier(
    ref: ref,
    repository: ref.watch(authRepositoryProvider),
    childRepository: ref.watch(childRepositoryProvider),
    localClient: ref.watch(localClientProvider),
  );
});

class UserStateNotifier extends StateNotifier<UserState> {
  UserStateNotifier({
    required this.ref,
    required this.repository,
    required this.childRepository,
    required this.localClient,
  }) : super(const UserStateInit());

  final StateNotifierProviderRef ref;
  final AuthRepository repository;
  final ChildRepository childRepository;
  final LocalClient localClient;

  Future<void> loadAuthenticationStatus({
    required Function(String) onFailure,
  }) async {
    // 認証関連キャッシュ取得
    final userId = await localClient.get<int>(LocalKeyType.userId);
    final accessToken = await localClient.get<String>(LocalKeyType.accessToken);
    final selectedChildId = await localClient.get<int>(LocalKeyType.selectedChildId);
    final selectedChildType = await localClient.get<String>(LocalKeyType.selectedChildType);

    if (userId == null || accessToken == null) {
      state = const UserState.unauthenticated();
      return;
    }

    debugPrint('===========認証済みユーザー===========');
    debugPrint('userId: $userId');
    debugPrint('accessToken: $accessToken');
    debugPrint('選択済み子どもID: $selectedChildId');
    debugPrint('選択済み子どもtype: $selectedChildType');
    debugPrint('===================================');

    state = UserState.authenticated(
      userId: userId,
      accessToken: accessToken,
      selectedChildId: selectedChildId,
    );

    if (selectedChildId != null && selectedChildType != null) {
      // 子どもデータ取得開始
      await ref.read(selectedChildStateProvider.notifier).fetch(
            childId: selectedChildId,
            childType: selectedChildType,
            onFailure: onFailure,
          );
    }
  }

  void login({
    required String email,
    required String password,
    required Function(String) onFailure,
  }) {
    if (email.isEmpty || password.isEmpty) {
      return;
    }
    repository.login(email: email, password: password).then(
      (IHSResponse<UserModel> response) {
        final user = response.data;
        if (response.status == ResponseStatus.failure || user == null) {
          state = const UserState.unauthenticated();
          onFailure(response.msg ?? '予期せぬエラーが発生しました');
          return;
        }

        // キャッシュ
        localClient
          ..set<int>(LocalKeyType.userId, user.userId)
          ..set<String>(LocalKeyType.accessToken, user.accessToken);
        FirebaseCrashlytics.instance.setUserIdentifier(user.userId.toString());

        state = UserState.authenticated(
          userId: user.userId,
          accessToken: user.accessToken,
        );
      },
    ).catchError((_) {});
  }

  void logout({
    required Function(String) onFailure,
    required VoidCallback onSuccess,
  }) {
    // すでに未認証のためスルー
    if (state is UserStateUnauthenticated) {
      return;
    }

    repository.logout().then(
      (response) {
        if (response.status == ResponseStatus.failure) {
          onFailure(response.msg ?? '予期せぬエラーが発生しました');
          return;
        }

        // キャッシュ削除
        localClient
          ..remove(LocalKeyType.userId)
          ..remove(LocalKeyType.accessToken)
          ..remove(LocalKeyType.selectedChildId)
          ..remove(LocalKeyType.selectedChildType);

        state = const UserState.unauthenticated();
        onSuccess();
      },
    ).catchError((_) {});
  }

  void cancel({
    required Function(String) onFailure,
    required VoidCallback onSuccess,
  }) {
    // すでに未認証のためスルー
    if (state is UserStateUnauthenticated) {
      return;
    }

    repository.cancel().then(
      (response) {
        if (response.status == ResponseStatus.failure) {
          onFailure(response.msg ?? '予期せぬエラーが発生しました');
          return;
        }

        // キャッシュ削除
        localClient
          ..remove(LocalKeyType.userId)
          ..remove(LocalKeyType.accessToken)
          ..remove(LocalKeyType.selectedChildId)
          ..remove(LocalKeyType.selectedChildType);

        state = const UserState.unauthenticated();
        onSuccess();
      },
    ).catchError((_) {});
  }

  /// 母子手帳選択
  Future<void> onSelectedBook({
    required int childId,
    required String childType,
    required Function(String) onFailure,
  }) async {
    if (state is UserStateUnauthenticated) {
      return;
    }

    // キャッシュ
    await localClient.set<int>(LocalKeyType.selectedChildId, childId);
    await localClient.set<String>(LocalKeyType.selectedChildType, childType);
    state = (state as UserStateAuthenticated).copyWith(
      selectedChildId: childId,
    );
    // 子どもデータ取得開始
    await ref.read(selectedChildStateProvider.notifier).fetch(
          childId: childId,
          childType: childType,
          onFailure: onFailure,
        );
    // ホームタブに移動
    ref.read(bottomBarStateProvider.notifier).setTabIndex(0);
  }

  /// SignUp後、最初に登録した胎児or子供の母子手帳を選択状態として保持
  Future<void> onSelectedFirstBookAfterSignUp({
    required Function(String) onFailure,
  }) async {
    await childRepository.childList().then((response) {
      final data = response.data;
      if (response.status == ResponseStatus.failure || data == null) {
        onFailure(response.msg ?? IHSTexts.error);
        return;
      }

      final list = data.list.map((e) => ChildListItemData.fromChildModel(childModel: e)).toList();
      final firstChild = list.first;
      onSelectedBook(
        childId: firstChild.childId,
        childType: firstChild.type,
        onFailure: onFailure,
      );
    }).catchError((_) {});
  }

  /// サインアップ完了
  Future<void> onSignedUp(
    UserModel user,
  ) async {
    // キャッシュ
    await localClient.set<int>(LocalKeyType.userId, user.userId);
    await localClient.set<String>(LocalKeyType.accessToken, user.accessToken);

    state = UserState.authenticated(
      userId: user.userId,
      accessToken: user.accessToken,
    );
  }
}
