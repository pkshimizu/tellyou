import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tellyou/ui/setting/view_model.dart';
import 'package:tellyou/ui/setting/widgets/github_account_view.dart';
import "package:tellyou/ui/widgets.dart";

class SettingGitHubView extends HookConsumerWidget {
  const SettingGitHubView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(settingViewModelProvider);

    return TColumn(
      children: [
        TRow(
          vAlign: TRowVAlign.center,
          gap: 1,
          children: [
            TText("GitHub Accounts"),
            TIconButton(icon: Icons.add, onPressed: (context) {}),
          ],
        ),
        ...state.accounts.map(
          (account) => SettingGitHubAccountView(account: account),
        ),
      ],
    );
  }
}
