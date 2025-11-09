import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tellyou/data/clients/github_rest_client.dart';
import 'package:tellyou/domain/models/github.dart';
import 'package:tellyou/ui/widgets.dart';

class GitHubRepositoryForm extends HookConsumerWidget {
  final GitHubAccount _account;

  const GitHubRepositoryForm({super.key, required GitHubAccount account})
    : _account = account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final repositories = useState<List<GitHubRestRepository>>([]);
    final selectedRepository = useState<GitHubRestRepository?>(null);
    final isLoading = useState(false);

    useEffect(() {
      Future<void> loadRepositories() async {
        isLoading.value = true;
        try {
          final client = GitHubRestClient();
          final repos = await client.getRepositories(_account.pat);
          repositories.value = repos;
        } catch (e) {
          // エラーハンドリング
          debugPrint('Failed to load repositories: $e');
        } finally {
          isLoading.value = false;
        }
      }

      loadRepositories();
      return null;
    }, []);

    return TRow(
      vAlign: TRowVAlign.center,
      gap: 2,
      children: [
        isLoading.value
            ? const TProgress()
            : TSelect<GitHubRestRepository>(
              items:
                  repositories.value
                      .map(
                        (repo) => TSelectItem(
                          repo,
                          '${repo.organization.login}/${repo.name}',
                        ),
                      )
                      .toList(),
              value: selectedRepository.value,
              onChanged: (value) {
                selectedRepository.value = value;
              },
            ),
        TButton(
          text: "Add",
          onPressed: (_) {
            // リポジトリを追加する処理
            if (selectedRepository.value != null) {
              debugPrint(
                'Adding repository: ${selectedRepository.value!.name}',
              );
            }
          },
        ),
      ],
    );
  }
}
