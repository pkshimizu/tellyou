import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tellyou/ui/widgets.dart';

class GitHubRepositoryForm extends HookConsumerWidget {
  const GitHubRepositoryForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TRow(
      vAlign: TRowVAlign.center,
      gap: 2,
      children: [
        TSelect(items: [], onChanged: (_) {}),
        TButton(text: "Add", onPressed: (_) {}),
      ],
    );
  }
}
