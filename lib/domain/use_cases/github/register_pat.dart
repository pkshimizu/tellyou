import 'package:tellyou/data/clients/github_rest_client.dart';
import 'package:tellyou/data/daos/github/account_dao.dart';
import 'package:tellyou/data/database.dart';
import 'package:tellyou/domain/models/github.dart';
import 'package:tellyou/domain/use_cases/use_case.dart';

class GitHubRegisterPatParams {
  final String pat;

  GitHubRegisterPatParams({required this.pat});
}

class GitHubRegisterPatResult {
  final GitHubAccount account;

  GitHubRegisterPatResult({required this.account});
}

class GitHubRegisterPatUseCase
    extends UseCase<GitHubRegisterPatParams, GitHubRegisterPatResult> {
  final Database _database;

  GitHubRegisterPatUseCase(this._database);

  @override
  Future<GitHubRegisterPatResult> execute(
    GitHubRegisterPatParams params,
  ) async {
    GitHubRestUser user = await GitHubRestClient().getUser(params.pat);
    final account = await GitHubAccountDao(
      _database,
    ).createAccount(user, params.pat);
    return GitHubRegisterPatResult(account: account);
  }
}
