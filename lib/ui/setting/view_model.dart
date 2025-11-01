import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:tellyou/domain/models/github.dart';
import 'package:tellyou/ui/setting/state.dart';

part "view_model.g.dart";

@riverpod
class SettingViewModel extends _$SettingViewModel {
  @override
  SettingState build() {
    return SettingState(
      accounts: [
        GitHubAccount(
          id: 1,
          login: "pkshimizu",
          name: "Kenji Shimizu",
          htmlUrl: "https://github.com/pkshimizu",
          avatarUrl: "https://avatars.githubusercontent.com/u/300403?v=4",
          pat: "",
          patExpiredAt: DateTime(2027, 12, 31),
          organizations: [
            GitHubOrganization(
              id: 1,
              accountId: 1,
              login: 'pkshimizu',
              htmlUrl: "https://github.com/pkshimizu",
              avatarUrl: "https://avatars.githubusercontent.com/u/300403?v=4",
              repositories: [
                GitHubRepository(
                  id: 1,
                  organizationId: 1,
                  name: "tellyou",
                  htmlUrl: "https://github.com/pkshimizu/tellyou",
                  avatarUrl:
                      "https://avatars.githubusercontent.com/u/300403?v=4",
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  void changeView(SettingView view) {
    state = state.copyWith(selectedView: view);
  }
}
