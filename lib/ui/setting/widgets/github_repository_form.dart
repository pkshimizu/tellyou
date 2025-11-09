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
    final isLoadingOrgs = useState(false);
    final isLoadingRepos = useState(false);

    // 組織リストを読み込み
    useEffect(() {
      Future<void> loadOrganizations() async {
        isLoadingOrgs.value = true;
        try {
          final client = GitHubRestClient();
          final orgs = await client.getOrganizations(_account.pat);
          organizations.value = orgs;
        } catch (e) {
          debugPrint('Failed to load organizations: $e');
        } finally {
          isLoadingOrgs.value = false;
        }
      }

      loadOrganizations();
      return null;
    }, []);

    // 組織が選択されたらリポジトリを読み込み
    useEffect(() {
      Future<void> loadRepositories() async {
        if (selectedOrganization.value == null) {
          repositories.value = [];
          return;
        }

        isLoadingRepos.value = true;
        selectedRepository.value = null; // リポジトリ選択をリセット
        try {
          final client = GitHubRestClient();
          final repos = await client.getRepositories(
            _account.pat,
            selectedOrganization.value!.login,
          );
          repositories.value = repos;
        } catch (e) {
          debugPrint('Failed to load repositories: $e');
          repositories.value = [];
        } finally {
          isLoadingRepos.value = false;
        }
      }

      loadRepositories();
      return null;
    }, [selectedOrganization.value]);

    return TRow(
      vAlign: TRowVAlign.center,
      gap: 2,
      children: [
        isLoadingOrgs.value
            ? const TProgress()
            : TSelect<GitHubRestOrganization>(
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
        isLoadingRepos.value
            ? const TProgress()
            : TSelect<GitHubRestRepository>(
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
