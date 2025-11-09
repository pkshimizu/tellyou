import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import "package:tellyou/ui/widgets.dart";
import 'package:tellyou/ui/setting/state.dart';
import 'package:tellyou/ui/setting/view_model.dart';

class SettingViewList extends HookConsumerWidget {
  const SettingViewList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(settingViewModelProvider);

    return asyncState.when(
      data:
          (state) => TListView(
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
          ),
      loading: () => const TCenter(child: TProgress()),
      error: (error, stack) => TText("Error: $error"),
    );
  }
}
