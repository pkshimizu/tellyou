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
    final organizations = useState<List<GitHubRestOrganization>>([]);
    final repositories = useState<List<GitHubRestRepository>>([]);
    final selectedOrganization = useState<GitHubRestOrganization?>(null);
    final selectedRepository = useState<GitHubRestRepository?>(null);
    final isLoading = useState(false);

    useEffect(() {
      Future<void> loadOrganizations() async {
        isLoading.value = true;
        try {
          final client = GitHubRestClient();
          final orgs = await client.getOrganizations(_account.pat);
          organizations.value = orgs;
        } catch (e) {
          // エラーハンドリング
          debugPrint('Failed to load organizations: $e');
        } finally {
          isLoading.value = false;
        }
      }

      loadOrganizations();
      return null;
    }, []);

    return TRow(
      vAlign: TRowVAlign.center,
      gap: 2,
      children: [
        TSelect<GitHubRestOrganization>(
          size: 160,
          items:
              organizations.value
                  .map((org) => TSelectItem(org, org.login))
                  .toList(),
          value: selectedOrganization.value,
          onChanged: (value) {
            selectedOrganization.value = value;
          },
        ),
        TSelect<GitHubRestRepository>(
          size: 160,
          items:
              repositories.value
                  .map((repo) => TSelectItem(repo, repo.name))
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
