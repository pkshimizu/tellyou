import 'package:drift/drift.dart';

import '../../domain/models/github.dart';

@UseRowClass(GitHubAccount)
class GitHubAccountTable extends Table {
  @override
  String get tableName => 'github_account';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get login => text()();
  TextColumn get name => text()();
  TextColumn get htmlUrl => text()();
  TextColumn get avatarUrl => text()();
  TextColumn get pat => text()();
  DateTimeColumn get patExpiredAt => dateTime()();
}

@UseRowClass(GitHubOrganization)
class GitHubOrganizationTable extends Table {
  @override
  String get tableName => 'github_organization';

  IntColumn get id => integer().autoIncrement()();
  IntColumn get accountId => integer().references(GitHubAccountTable, #id)();
  TextColumn get login => text()();
  TextColumn get htmlUrl => text()();
  TextColumn get avatarUrl => text()();
}

@UseRowClass(GitHubRepository)
class GitHubRepositoryTable extends Table {
  @override
  String get tableName => 'github_repository';

  IntColumn get id => integer().autoIncrement()();
  IntColumn get organizationId =>
      integer().references(GitHubOrganizationTable, #id)();
  TextColumn get name => text()();
  TextColumn get htmlUrl => text()();
  TextColumn get avatarUrl => text()();
}
