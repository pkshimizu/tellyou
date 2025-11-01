import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import "package:tellyou/ui/widgets.dart";
import 'package:tellyou/ui/setting/dialog.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TScaffold(
      title: "TellYou",
      actions: [
        TIconButton(
          icon: Icons.settings,
          onPressed: (context) {
            SettingDialog().show(context);
          },
        ),
      ],
      body: TText("Coming Soon!!"),
    );
  }
}
