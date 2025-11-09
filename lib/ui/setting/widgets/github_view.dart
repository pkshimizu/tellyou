import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tellyou/ui/setting/widgets/github_pat_register_dialog.dart';

import "package:tellyou/ui/widgets.dart";
import 'package:tellyou/ui/setting/view_model.dart';
import 'package:tellyou/ui/setting/widgets/github_account_view.dart';
import 'package:tellyou/ui/setting/widgets/github_repository_table.dart';

class SettingGitHubView extends HookConsumerWidget {
  const SettingGitHubView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(settingViewModelProvider);

    return asyncState.when(
      data:
          (state) => TColumn(
            children: [
              TRow(
                vAlign: TRowVAlign.center,
                gap: 1,
                children: [
                  TText("GitHub Accounts"),
                  TIconButton(
                    icon: Icons.add,
                    onPressed: (context) {
                      GitHubPatRegisterDialog().show(context);
                    },
                  ),
                ],
              ),
              TColumn(
                gap: 2,
                children: [
                  for (final account in state.accounts)
                    TColumn(
                      gap: 1,
                      children: [
                        SettingGitHubAccountView(account: account),
                        TPadding(
                          left: 16,
                          child: TColumn(
                            children: [
                              for (final organization in account.organizations)
                                SettingGitHubRepositoryTable(
                                  organization: organization,
                                  repositories: organization.repositories,
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ],
          ),
      loading: () => const TCenter(child: TProgress()),
      error: (error, stack) => TText("Error: $error"),
    );
  }
}
