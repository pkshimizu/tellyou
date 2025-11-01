import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import "package:tellyou/ui/widgets.dart";
import 'package:tellyou/ui/setting/state.dart';
import 'package:tellyou/ui/setting/view_model.dart';
import 'package:tellyou/ui/setting/widgets/github_view.dart';

class SettingViews extends HookConsumerWidget {
  const SettingViews({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(settingViewModelProvider);

    if (state.selectedView == SettingView.general) {
      return TText("General");
    }

    if (state.selectedView == SettingView.github) {
      return SettingGitHubView();
    }

    return TText("Unknown");
  }
}
