import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import "package:tellyou/ui/widgets.dart";
import 'package:tellyou/domain/models/github.dart';

class SettingGitHubAccountView extends StatelessWidget {
  final GitHubAccount _account;

  const SettingGitHubAccountView({super.key, required GitHubAccount account})
    : _account = account;

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat("yyyy-MM-dd hh:mm");
    return TRow(
      vAlign: TRowVAlign.center,
      gap: 1,
      children: [
        TAvatar(url: _account.avatarUrl, size: TAvatarSize.sm),
        TColumn(
          children: [
            TRow(
              children: [TText(_account.name), TText('(${_account.login})')],
            ),
            TText(
              '${dateFormat.format(_account.patExpiredAt)} expires',
              style: TTextStyle.label,
            ),
          ],
        ),
      ],
    );
  }
}
