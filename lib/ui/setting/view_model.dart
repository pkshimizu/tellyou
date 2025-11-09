import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:tellyou/data/database.dart';
import 'package:tellyou/data/daos/github/account_dao.dart';
import 'package:tellyou/domain/use_cases/github/register_pat.dart';
import 'package:tellyou/ui/setting/state.dart';

part "view_model.g.dart";

@riverpod
class SettingViewModel extends _$SettingViewModel {
  @override
  Future<SettingState> build() async {
    final db = ref.read(databaseProvider);
    final accounts = await GitHubAccountDao(db).findAll();
    return SettingState(accounts: accounts);
  }

  void changeView(SettingView view) {
    state.whenData((currentState) {
      state = AsyncValue.data(currentState.copyWith(selectedView: view));
    });
  }

  Future<void> registerGitHubPat(String pat) async {
    final db = ref.read(databaseProvider);
    await GitHubRegisterPatUseCase(db)(GitHubRegisterPatParams(pat: pat));
    // アカウント情報を再読み込み
    ref.invalidateSelf();
  }
}
