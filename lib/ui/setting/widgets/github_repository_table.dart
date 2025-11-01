import 'package:flutter/material.dart';
import 'package:tellyou/domain/models/github.dart';
import 'package:tellyou/ui/widgets.dart';

class SettingGitHubRepositoryTable extends StatelessWidget {
  final GitHubOrganization _organization;
  final List<GitHubRepository> _repositories;

  const SettingGitHubRepositoryTable({
    super.key,
    required organization,
    required repositories,
  }) : _organization = organization,
       _repositories = repositories;

  @override
  Widget build(BuildContext context) {
    return TColumn(
      children: [
        for (GitHubRepository repository in _repositories)
          TRow(
            vAlign: TRowVAlign.center,
            gap: 2,
            children: [
              TRow(
                vAlign: TRowVAlign.center,
                width: 120,
                gap: 1,
                children: [
                  TAvatar(url: _organization.avatarUrl, size: TAvatarSize.xs),
                  TText(_organization.login),
                ],
              ),
              TText("/"),
              TRow(
                vAlign: TRowVAlign.center,
                gap: 1,
                children: [
                  TAvatar(url: repository.avatarUrl, size: TAvatarSize.xs),
                  TText(repository.name),
                ],
              ),
              TIconButton(icon: Icons.remove, onPressed: (_) {}),
            ],
          ),
      ],
    );
  }
}
