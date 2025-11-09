import "package:drift/drift.dart";

import 'package:tellyou/data/database.dart';
import 'package:tellyou/data/tables/github_tables.dart';
import 'package:tellyou/domain/models/github.dart';

part "account_dao.g.dart";

@DriftAccessor(tables: [GitHubAccountTable])
class GitHubAccountDao extends DatabaseAccessor<Database>
    with _$GitHubAccountDaoMixin {
  GitHubAccountDao(super.db);

  Future<GitHubAccount> createAccount(GitHubRestUser user, String pat) async {
    final companion = GitHubAccountTableCompanion(
      login: Value(user.login),
      name: Value(user.name),
      htmlUrl: Value(user.htmlUrl),
      avatarUrl: Value(user.avatarUrl),
      pat: Value(pat),
      patExpiredAt: Value(user.expiresAt),
    );
    final id = await into(gitHubAccountTable).insert(companion);
    final account = await findById(id);
    if (account == null) {
      throw Exception("");
    }
    return account;
  }

  Future<GitHubAccount?> findById(int id) async {
    final query = select(gitHubAccountTable)..where((tbl) => tbl.id.equals(id));
    return await query.getSingleOrNull();
  }

  Future<List<GitHubAccount>> findAll() async {
    return await select(gitHubAccountTable).get();
  }
}
