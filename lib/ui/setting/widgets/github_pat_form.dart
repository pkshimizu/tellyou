import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tellyou/ui/setting/view_model.dart';
import 'package:tellyou/ui/widgets.dart';

class GitHubPatForm extends HookConsumerWidget {
  const GitHubPatForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pat = useTextEditingController();

    return TColumn(
      gap: 2,
      children: [
        TFormField(
          label: 'Personal Access Token',
          child: TTextField(controller: pat),
        ),
        TRow(
          hAlign: TRowHAlign.end,
          children: [
            TButton(
              text: "Register",
              onPressed: (_) {
                ref
                    .read(settingViewModelProvider.notifier)
                    .registerGitHubPat(pat.text);
              },
            ),
          ],
        ),
      ],
    );
  }
}
