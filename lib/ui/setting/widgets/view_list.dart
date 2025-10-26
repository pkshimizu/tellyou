import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tellyou/ui/setting/state.dart';
import 'package:tellyou/ui/setting/view_model.dart';

import "package:tellyou/ui/widgets.dart";

class SettingViewList extends HookConsumerWidget {
  const SettingViewList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(settingViewModelProvider);

    return TListView(
      items: [
        TListItem(
          title: "General",
          selected: state.selectedView == SettingView.general,
          onTap: () {
            ref
                .read(settingViewModelProvider.notifier)
                .changeView(SettingView.general);
          },
        ),
        TListItem(
          title: "GitHub",
          selected: state.selectedView == SettingView.github,
          onTap: () {
            ref
                .read(settingViewModelProvider.notifier)
                .changeView(SettingView.github);
          },
        ),
      ],
    );
  }
}
