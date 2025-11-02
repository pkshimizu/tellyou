// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $GitHubAccountTableTable extends GitHubAccountTable
    with TableInfo<$GitHubAccountTableTable, GitHubAccount> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GitHubAccountTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _loginMeta = const VerificationMeta('login');
  @override
  late final GeneratedColumn<String> login = GeneratedColumn<String>(
    'login',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _htmlUrlMeta = const VerificationMeta(
    'htmlUrl',
  );
  @override
  late final GeneratedColumn<String> htmlUrl = GeneratedColumn<String>(
    'html_url',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _avatarUrlMeta = const VerificationMeta(
    'avatarUrl',
  );
  @override
  late final GeneratedColumn<String> avatarUrl = GeneratedColumn<String>(
    'avatar_url',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _patMeta = const VerificationMeta('pat');
  @override
  late final GeneratedColumn<String> pat = GeneratedColumn<String>(
    'pat',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _patExpiredAtMeta = const VerificationMeta(
    'patExpiredAt',
  );
  @override
  late final GeneratedColumn<DateTime> patExpiredAt = GeneratedColumn<DateTime>(
    'pat_expired_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    login,
    name,
    htmlUrl,
    avatarUrl,
    pat,
    patExpiredAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'git_hub_account_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<GitHubAccount> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('login')) {
      context.handle(
        _loginMeta,
        login.isAcceptableOrUnknown(data['login']!, _loginMeta),
      );
    } else if (isInserting) {
      context.missing(_loginMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('html_url')) {
      context.handle(
        _htmlUrlMeta,
        htmlUrl.isAcceptableOrUnknown(data['html_url']!, _htmlUrlMeta),
      );
    } else if (isInserting) {
      context.missing(_htmlUrlMeta);
    }
    if (data.containsKey('avatar_url')) {
      context.handle(
        _avatarUrlMeta,
        avatarUrl.isAcceptableOrUnknown(data['avatar_url']!, _avatarUrlMeta),
      );
    } else if (isInserting) {
      context.missing(_avatarUrlMeta);
    }
    if (data.containsKey('pat')) {
      context.handle(
        _patMeta,
        pat.isAcceptableOrUnknown(data['pat']!, _patMeta),
      );
    } else if (isInserting) {
      context.missing(_patMeta);
    }
    if (data.containsKey('pat_expired_at')) {
      context.handle(
        _patExpiredAtMeta,
        patExpiredAt.isAcceptableOrUnknown(
          data['pat_expired_at']!,
          _patExpiredAtMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_patExpiredAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GitHubAccount map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GitHubAccount(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      login:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}login'],
          )!,
      name:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}name'],
          )!,
      htmlUrl:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}html_url'],
          )!,
      avatarUrl:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}avatar_url'],
          )!,
      pat:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}pat'],
          )!,
      patExpiredAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}pat_expired_at'],
          )!,
    );
  }

  @override
  $GitHubAccountTableTable createAlias(String alias) {
    return $GitHubAccountTableTable(attachedDatabase, alias);
  }
}

class GitHubAccountTableCompanion extends UpdateCompanion<GitHubAccount> {
  final Value<int> id;
  final Value<String> login;
  final Value<String> name;
  final Value<String> htmlUrl;
  final Value<String> avatarUrl;
  final Value<String> pat;
  final Value<DateTime> patExpiredAt;
  const GitHubAccountTableCompanion({
    this.id = const Value.absent(),
    this.login = const Value.absent(),
    this.name = const Value.absent(),
    this.htmlUrl = const Value.absent(),
    this.avatarUrl = const Value.absent(),
    this.pat = const Value.absent(),
    this.patExpiredAt = const Value.absent(),
  });
  GitHubAccountTableCompanion.insert({
    this.id = const Value.absent(),
    required String login,
    required String name,
    required String htmlUrl,
    required String avatarUrl,
    required String pat,
    required DateTime patExpiredAt,
  }) : login = Value(login),
       name = Value(name),
       htmlUrl = Value(htmlUrl),
       avatarUrl = Value(avatarUrl),
       pat = Value(pat),
       patExpiredAt = Value(patExpiredAt);
  static Insertable<GitHubAccount> custom({
    Expression<int>? id,
    Expression<String>? login,
    Expression<String>? name,
    Expression<String>? htmlUrl,
    Expression<String>? avatarUrl,
    Expression<String>? pat,
    Expression<DateTime>? patExpiredAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (login != null) 'login': login,
      if (name != null) 'name': name,
      if (htmlUrl != null) 'html_url': htmlUrl,
      if (avatarUrl != null) 'avatar_url': avatarUrl,
      if (pat != null) 'pat': pat,
      if (patExpiredAt != null) 'pat_expired_at': patExpiredAt,
    });
  }

  GitHubAccountTableCompanion copyWith({
    Value<int>? id,
    Value<String>? login,
    Value<String>? name,
    Value<String>? htmlUrl,
    Value<String>? avatarUrl,
    Value<String>? pat,
    Value<DateTime>? patExpiredAt,
  }) {
    return GitHubAccountTableCompanion(
      id: id ?? this.id,
      login: login ?? this.login,
      name: name ?? this.name,
      htmlUrl: htmlUrl ?? this.htmlUrl,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      pat: pat ?? this.pat,
      patExpiredAt: patExpiredAt ?? this.patExpiredAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (login.present) {
      map['login'] = Variable<String>(login.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (htmlUrl.present) {
      map['html_url'] = Variable<String>(htmlUrl.value);
    }
    if (avatarUrl.present) {
      map['avatar_url'] = Variable<String>(avatarUrl.value);
    }
    if (pat.present) {
      map['pat'] = Variable<String>(pat.value);
    }
    if (patExpiredAt.present) {
      map['pat_expired_at'] = Variable<DateTime>(patExpiredAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GitHubAccountTableCompanion(')
          ..write('id: $id, ')
          ..write('login: $login, ')
          ..write('name: $name, ')
          ..write('htmlUrl: $htmlUrl, ')
          ..write('avatarUrl: $avatarUrl, ')
          ..write('pat: $pat, ')
          ..write('patExpiredAt: $patExpiredAt')
          ..write(')'))
        .toString();
  }
}

class $GitHubOrganizationTableTable extends GitHubOrganizationTable
    with TableInfo<$GitHubOrganizationTableTable, GitHubOrganization> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GitHubOrganizationTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _accountIdMeta = const VerificationMeta(
    'accountId',
  );
  @override
  late final GeneratedColumn<int> accountId = GeneratedColumn<int>(
    'account_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES git_hub_account_table (id)',
    ),
  );
  static const VerificationMeta _loginMeta = const VerificationMeta('login');
  @override
  late final GeneratedColumn<String> login = GeneratedColumn<String>(
    'login',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _htmlUrlMeta = const VerificationMeta(
    'htmlUrl',
  );
  @override
  late final GeneratedColumn<String> htmlUrl = GeneratedColumn<String>(
    'html_url',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _avatarUrlMeta = const VerificationMeta(
    'avatarUrl',
  );
  @override
  late final GeneratedColumn<String> avatarUrl = GeneratedColumn<String>(
    'avatar_url',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    accountId,
    login,
    htmlUrl,
    avatarUrl,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'git_hub_organization_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<GitHubOrganization> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('account_id')) {
      context.handle(
        _accountIdMeta,
        accountId.isAcceptableOrUnknown(data['account_id']!, _accountIdMeta),
      );
    } else if (isInserting) {
      context.missing(_accountIdMeta);
    }
    if (data.containsKey('login')) {
      context.handle(
        _loginMeta,
        login.isAcceptableOrUnknown(data['login']!, _loginMeta),
      );
    } else if (isInserting) {
      context.missing(_loginMeta);
    }
    if (data.containsKey('html_url')) {
      context.handle(
        _htmlUrlMeta,
        htmlUrl.isAcceptableOrUnknown(data['html_url']!, _htmlUrlMeta),
      );
    } else if (isInserting) {
      context.missing(_htmlUrlMeta);
    }
    if (data.containsKey('avatar_url')) {
      context.handle(
        _avatarUrlMeta,
        avatarUrl.isAcceptableOrUnknown(data['avatar_url']!, _avatarUrlMeta),
      );
    } else if (isInserting) {
      context.missing(_avatarUrlMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GitHubOrganization map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GitHubOrganization(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      accountId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}account_id'],
          )!,
      login:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}login'],
          )!,
      htmlUrl:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}html_url'],
          )!,
      avatarUrl:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}avatar_url'],
          )!,
    );
  }

  @override
  $GitHubOrganizationTableTable createAlias(String alias) {
    return $GitHubOrganizationTableTable(attachedDatabase, alias);
  }
}

class GitHubOrganizationTableCompanion
    extends UpdateCompanion<GitHubOrganization> {
  final Value<int> id;
  final Value<int> accountId;
  final Value<String> login;
  final Value<String> htmlUrl;
  final Value<String> avatarUrl;
  const GitHubOrganizationTableCompanion({
    this.id = const Value.absent(),
    this.accountId = const Value.absent(),
    this.login = const Value.absent(),
    this.htmlUrl = const Value.absent(),
    this.avatarUrl = const Value.absent(),
  });
  GitHubOrganizationTableCompanion.insert({
    this.id = const Value.absent(),
    required int accountId,
    required String login,
    required String htmlUrl,
    required String avatarUrl,
  }) : accountId = Value(accountId),
       login = Value(login),
       htmlUrl = Value(htmlUrl),
       avatarUrl = Value(avatarUrl);
  static Insertable<GitHubOrganization> custom({
    Expression<int>? id,
    Expression<int>? accountId,
    Expression<String>? login,
    Expression<String>? htmlUrl,
    Expression<String>? avatarUrl,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (accountId != null) 'account_id': accountId,
      if (login != null) 'login': login,
      if (htmlUrl != null) 'html_url': htmlUrl,
      if (avatarUrl != null) 'avatar_url': avatarUrl,
    });
  }

  GitHubOrganizationTableCompanion copyWith({
    Value<int>? id,
    Value<int>? accountId,
    Value<String>? login,
    Value<String>? htmlUrl,
    Value<String>? avatarUrl,
  }) {
    return GitHubOrganizationTableCompanion(
      id: id ?? this.id,
      accountId: accountId ?? this.accountId,
      login: login ?? this.login,
      htmlUrl: htmlUrl ?? this.htmlUrl,
      avatarUrl: avatarUrl ?? this.avatarUrl,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (accountId.present) {
      map['account_id'] = Variable<int>(accountId.value);
    }
    if (login.present) {
      map['login'] = Variable<String>(login.value);
    }
    if (htmlUrl.present) {
      map['html_url'] = Variable<String>(htmlUrl.value);
    }
    if (avatarUrl.present) {
      map['avatar_url'] = Variable<String>(avatarUrl.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GitHubOrganizationTableCompanion(')
          ..write('id: $id, ')
          ..write('accountId: $accountId, ')
          ..write('login: $login, ')
          ..write('htmlUrl: $htmlUrl, ')
          ..write('avatarUrl: $avatarUrl')
          ..write(')'))
        .toString();
  }
}

class $GitHubRepositoryTableTable extends GitHubRepositoryTable
    with TableInfo<$GitHubRepositoryTableTable, GitHubRepository> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GitHubRepositoryTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _organizationIdMeta = const VerificationMeta(
    'organizationId',
  );
  @override
  late final GeneratedColumn<int> organizationId = GeneratedColumn<int>(
    'organization_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES git_hub_organization_table (id)',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _htmlUrlMeta = const VerificationMeta(
    'htmlUrl',
  );
  @override
  late final GeneratedColumn<String> htmlUrl = GeneratedColumn<String>(
    'html_url',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _avatarUrlMeta = const VerificationMeta(
    'avatarUrl',
  );
  @override
  late final GeneratedColumn<String> avatarUrl = GeneratedColumn<String>(
    'avatar_url',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    organizationId,
    name,
    htmlUrl,
    avatarUrl,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'git_hub_repository_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<GitHubRepository> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('organization_id')) {
      context.handle(
        _organizationIdMeta,
        organizationId.isAcceptableOrUnknown(
          data['organization_id']!,
          _organizationIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_organizationIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('html_url')) {
      context.handle(
        _htmlUrlMeta,
        htmlUrl.isAcceptableOrUnknown(data['html_url']!, _htmlUrlMeta),
      );
    } else if (isInserting) {
      context.missing(_htmlUrlMeta);
    }
    if (data.containsKey('avatar_url')) {
      context.handle(
        _avatarUrlMeta,
        avatarUrl.isAcceptableOrUnknown(data['avatar_url']!, _avatarUrlMeta),
      );
    } else if (isInserting) {
      context.missing(_avatarUrlMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GitHubRepository map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GitHubRepository(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      organizationId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}organization_id'],
          )!,
      name:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}name'],
          )!,
      htmlUrl:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}html_url'],
          )!,
      avatarUrl:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}avatar_url'],
          )!,
    );
  }

  @override
  $GitHubRepositoryTableTable createAlias(String alias) {
    return $GitHubRepositoryTableTable(attachedDatabase, alias);
  }
}

class GitHubRepositoryTableCompanion extends UpdateCompanion<GitHubRepository> {
  final Value<int> id;
  final Value<int> organizationId;
  final Value<String> name;
  final Value<String> htmlUrl;
  final Value<String> avatarUrl;
  const GitHubRepositoryTableCompanion({
    this.id = const Value.absent(),
    this.organizationId = const Value.absent(),
    this.name = const Value.absent(),
    this.htmlUrl = const Value.absent(),
    this.avatarUrl = const Value.absent(),
  });
  GitHubRepositoryTableCompanion.insert({
    this.id = const Value.absent(),
    required int organizationId,
    required String name,
    required String htmlUrl,
    required String avatarUrl,
  }) : organizationId = Value(organizationId),
       name = Value(name),
       htmlUrl = Value(htmlUrl),
       avatarUrl = Value(avatarUrl);
  static Insertable<GitHubRepository> custom({
    Expression<int>? id,
    Expression<int>? organizationId,
    Expression<String>? name,
    Expression<String>? htmlUrl,
    Expression<String>? avatarUrl,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (organizationId != null) 'organization_id': organizationId,
      if (name != null) 'name': name,
      if (htmlUrl != null) 'html_url': htmlUrl,
      if (avatarUrl != null) 'avatar_url': avatarUrl,
    });
  }

  GitHubRepositoryTableCompanion copyWith({
    Value<int>? id,
    Value<int>? organizationId,
    Value<String>? name,
    Value<String>? htmlUrl,
    Value<String>? avatarUrl,
  }) {
    return GitHubRepositoryTableCompanion(
      id: id ?? this.id,
      organizationId: organizationId ?? this.organizationId,
      name: name ?? this.name,
      htmlUrl: htmlUrl ?? this.htmlUrl,
      avatarUrl: avatarUrl ?? this.avatarUrl,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (organizationId.present) {
      map['organization_id'] = Variable<int>(organizationId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (htmlUrl.present) {
      map['html_url'] = Variable<String>(htmlUrl.value);
    }
    if (avatarUrl.present) {
      map['avatar_url'] = Variable<String>(avatarUrl.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GitHubRepositoryTableCompanion(')
          ..write('id: $id, ')
          ..write('organizationId: $organizationId, ')
          ..write('name: $name, ')
          ..write('htmlUrl: $htmlUrl, ')
          ..write('avatarUrl: $avatarUrl')
          ..write(')'))
        .toString();
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(e);
  $DatabaseManager get managers => $DatabaseManager(this);
  late final $GitHubAccountTableTable gitHubAccountTable =
      $GitHubAccountTableTable(this);
  late final $GitHubOrganizationTableTable gitHubOrganizationTable =
      $GitHubOrganizationTableTable(this);
  late final $GitHubRepositoryTableTable gitHubRepositoryTable =
      $GitHubRepositoryTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    gitHubAccountTable,
    gitHubOrganizationTable,
    gitHubRepositoryTable,
  ];
}

typedef $$GitHubAccountTableTableCreateCompanionBuilder =
    GitHubAccountTableCompanion Function({
      Value<int> id,
      required String login,
      required String name,
      required String htmlUrl,
      required String avatarUrl,
      required String pat,
      required DateTime patExpiredAt,
    });
typedef $$GitHubAccountTableTableUpdateCompanionBuilder =
    GitHubAccountTableCompanion Function({
      Value<int> id,
      Value<String> login,
      Value<String> name,
      Value<String> htmlUrl,
      Value<String> avatarUrl,
      Value<String> pat,
      Value<DateTime> patExpiredAt,
    });

final class $$GitHubAccountTableTableReferences
    extends
        BaseReferences<_$Database, $GitHubAccountTableTable, GitHubAccount> {
  $$GitHubAccountTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static MultiTypedResultKey<
    $GitHubOrganizationTableTable,
    List<GitHubOrganization>
  >
  _gitHubOrganizationTableRefsTable(_$Database db) =>
      MultiTypedResultKey.fromTable(
        db.gitHubOrganizationTable,
        aliasName: $_aliasNameGenerator(
          db.gitHubAccountTable.id,
          db.gitHubOrganizationTable.accountId,
        ),
      );

  $$GitHubOrganizationTableTableProcessedTableManager
  get gitHubOrganizationTableRefs {
    final manager = $$GitHubOrganizationTableTableTableManager(
      $_db,
      $_db.gitHubOrganizationTable,
    ).filter((f) => f.accountId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _gitHubOrganizationTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$GitHubAccountTableTableFilterComposer
    extends Composer<_$Database, $GitHubAccountTableTable> {
  $$GitHubAccountTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get login => $composableBuilder(
    column: $table.login,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get htmlUrl => $composableBuilder(
    column: $table.htmlUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get avatarUrl => $composableBuilder(
    column: $table.avatarUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get pat => $composableBuilder(
    column: $table.pat,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get patExpiredAt => $composableBuilder(
    column: $table.patExpiredAt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> gitHubOrganizationTableRefs(
    Expression<bool> Function($$GitHubOrganizationTableTableFilterComposer f) f,
  ) {
    final $$GitHubOrganizationTableTableFilterComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.gitHubOrganizationTable,
          getReferencedColumn: (t) => t.accountId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$GitHubOrganizationTableTableFilterComposer(
                $db: $db,
                $table: $db.gitHubOrganizationTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$GitHubAccountTableTableOrderingComposer
    extends Composer<_$Database, $GitHubAccountTableTable> {
  $$GitHubAccountTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get login => $composableBuilder(
    column: $table.login,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get htmlUrl => $composableBuilder(
    column: $table.htmlUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get avatarUrl => $composableBuilder(
    column: $table.avatarUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get pat => $composableBuilder(
    column: $table.pat,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get patExpiredAt => $composableBuilder(
    column: $table.patExpiredAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$GitHubAccountTableTableAnnotationComposer
    extends Composer<_$Database, $GitHubAccountTableTable> {
  $$GitHubAccountTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get login =>
      $composableBuilder(column: $table.login, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get htmlUrl =>
      $composableBuilder(column: $table.htmlUrl, builder: (column) => column);

  GeneratedColumn<String> get avatarUrl =>
      $composableBuilder(column: $table.avatarUrl, builder: (column) => column);

  GeneratedColumn<String> get pat =>
      $composableBuilder(column: $table.pat, builder: (column) => column);

  GeneratedColumn<DateTime> get patExpiredAt => $composableBuilder(
    column: $table.patExpiredAt,
    builder: (column) => column,
  );

  Expression<T> gitHubOrganizationTableRefs<T extends Object>(
    Expression<T> Function($$GitHubOrganizationTableTableAnnotationComposer a)
    f,
  ) {
    final $$GitHubOrganizationTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.gitHubOrganizationTable,
          getReferencedColumn: (t) => t.accountId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$GitHubOrganizationTableTableAnnotationComposer(
                $db: $db,
                $table: $db.gitHubOrganizationTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$GitHubAccountTableTableTableManager
    extends
        RootTableManager<
          _$Database,
          $GitHubAccountTableTable,
          GitHubAccount,
          $$GitHubAccountTableTableFilterComposer,
          $$GitHubAccountTableTableOrderingComposer,
          $$GitHubAccountTableTableAnnotationComposer,
          $$GitHubAccountTableTableCreateCompanionBuilder,
          $$GitHubAccountTableTableUpdateCompanionBuilder,
          (GitHubAccount, $$GitHubAccountTableTableReferences),
          GitHubAccount,
          PrefetchHooks Function({bool gitHubOrganizationTableRefs})
        > {
  $$GitHubAccountTableTableTableManager(
    _$Database db,
    $GitHubAccountTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$GitHubAccountTableTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer:
              () => $$GitHubAccountTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer:
              () => $$GitHubAccountTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> login = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> htmlUrl = const Value.absent(),
                Value<String> avatarUrl = const Value.absent(),
                Value<String> pat = const Value.absent(),
                Value<DateTime> patExpiredAt = const Value.absent(),
              }) => GitHubAccountTableCompanion(
                id: id,
                login: login,
                name: name,
                htmlUrl: htmlUrl,
                avatarUrl: avatarUrl,
                pat: pat,
                patExpiredAt: patExpiredAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String login,
                required String name,
                required String htmlUrl,
                required String avatarUrl,
                required String pat,
                required DateTime patExpiredAt,
              }) => GitHubAccountTableCompanion.insert(
                id: id,
                login: login,
                name: name,
                htmlUrl: htmlUrl,
                avatarUrl: avatarUrl,
                pat: pat,
                patExpiredAt: patExpiredAt,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          $$GitHubAccountTableTableReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: ({gitHubOrganizationTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (gitHubOrganizationTableRefs) db.gitHubOrganizationTable,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (gitHubOrganizationTableRefs)
                    await $_getPrefetchedData<
                      GitHubAccount,
                      $GitHubAccountTableTable,
                      GitHubOrganization
                    >(
                      currentTable: table,
                      referencedTable: $$GitHubAccountTableTableReferences
                          ._gitHubOrganizationTableRefsTable(db),
                      managerFromTypedResult:
                          (p0) =>
                              $$GitHubAccountTableTableReferences(
                                db,
                                table,
                                p0,
                              ).gitHubOrganizationTableRefs,
                      referencedItemsForCurrentItem:
                          (item, referencedItems) => referencedItems.where(
                            (e) => e.accountId == item.id,
                          ),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$GitHubAccountTableTableProcessedTableManager =
    ProcessedTableManager<
      _$Database,
      $GitHubAccountTableTable,
      GitHubAccount,
      $$GitHubAccountTableTableFilterComposer,
      $$GitHubAccountTableTableOrderingComposer,
      $$GitHubAccountTableTableAnnotationComposer,
      $$GitHubAccountTableTableCreateCompanionBuilder,
      $$GitHubAccountTableTableUpdateCompanionBuilder,
      (GitHubAccount, $$GitHubAccountTableTableReferences),
      GitHubAccount,
      PrefetchHooks Function({bool gitHubOrganizationTableRefs})
    >;
typedef $$GitHubOrganizationTableTableCreateCompanionBuilder =
    GitHubOrganizationTableCompanion Function({
      Value<int> id,
      required int accountId,
      required String login,
      required String htmlUrl,
      required String avatarUrl,
    });
typedef $$GitHubOrganizationTableTableUpdateCompanionBuilder =
    GitHubOrganizationTableCompanion Function({
      Value<int> id,
      Value<int> accountId,
      Value<String> login,
      Value<String> htmlUrl,
      Value<String> avatarUrl,
    });

final class $$GitHubOrganizationTableTableReferences
    extends
        BaseReferences<
          _$Database,
          $GitHubOrganizationTableTable,
          GitHubOrganization
        > {
  $$GitHubOrganizationTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $GitHubAccountTableTable _accountIdTable(_$Database db) =>
      db.gitHubAccountTable.createAlias(
        $_aliasNameGenerator(
          db.gitHubOrganizationTable.accountId,
          db.gitHubAccountTable.id,
        ),
      );

  $$GitHubAccountTableTableProcessedTableManager get accountId {
    final $_column = $_itemColumn<int>('account_id')!;

    final manager = $$GitHubAccountTableTableTableManager(
      $_db,
      $_db.gitHubAccountTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_accountIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<
    $GitHubRepositoryTableTable,
    List<GitHubRepository>
  >
  _gitHubRepositoryTableRefsTable(_$Database db) =>
      MultiTypedResultKey.fromTable(
        db.gitHubRepositoryTable,
        aliasName: $_aliasNameGenerator(
          db.gitHubOrganizationTable.id,
          db.gitHubRepositoryTable.organizationId,
        ),
      );

  $$GitHubRepositoryTableTableProcessedTableManager
  get gitHubRepositoryTableRefs {
    final manager = $$GitHubRepositoryTableTableTableManager(
      $_db,
      $_db.gitHubRepositoryTable,
    ).filter((f) => f.organizationId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _gitHubRepositoryTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$GitHubOrganizationTableTableFilterComposer
    extends Composer<_$Database, $GitHubOrganizationTableTable> {
  $$GitHubOrganizationTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get login => $composableBuilder(
    column: $table.login,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get htmlUrl => $composableBuilder(
    column: $table.htmlUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get avatarUrl => $composableBuilder(
    column: $table.avatarUrl,
    builder: (column) => ColumnFilters(column),
  );

  $$GitHubAccountTableTableFilterComposer get accountId {
    final $$GitHubAccountTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.accountId,
      referencedTable: $db.gitHubAccountTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$GitHubAccountTableTableFilterComposer(
            $db: $db,
            $table: $db.gitHubAccountTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> gitHubRepositoryTableRefs(
    Expression<bool> Function($$GitHubRepositoryTableTableFilterComposer f) f,
  ) {
    final $$GitHubRepositoryTableTableFilterComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.gitHubRepositoryTable,
          getReferencedColumn: (t) => t.organizationId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$GitHubRepositoryTableTableFilterComposer(
                $db: $db,
                $table: $db.gitHubRepositoryTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$GitHubOrganizationTableTableOrderingComposer
    extends Composer<_$Database, $GitHubOrganizationTableTable> {
  $$GitHubOrganizationTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get login => $composableBuilder(
    column: $table.login,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get htmlUrl => $composableBuilder(
    column: $table.htmlUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get avatarUrl => $composableBuilder(
    column: $table.avatarUrl,
    builder: (column) => ColumnOrderings(column),
  );

  $$GitHubAccountTableTableOrderingComposer get accountId {
    final $$GitHubAccountTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.accountId,
      referencedTable: $db.gitHubAccountTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$GitHubAccountTableTableOrderingComposer(
            $db: $db,
            $table: $db.gitHubAccountTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$GitHubOrganizationTableTableAnnotationComposer
    extends Composer<_$Database, $GitHubOrganizationTableTable> {
  $$GitHubOrganizationTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get login =>
      $composableBuilder(column: $table.login, builder: (column) => column);

  GeneratedColumn<String> get htmlUrl =>
      $composableBuilder(column: $table.htmlUrl, builder: (column) => column);

  GeneratedColumn<String> get avatarUrl =>
      $composableBuilder(column: $table.avatarUrl, builder: (column) => column);

  $$GitHubAccountTableTableAnnotationComposer get accountId {
    final $$GitHubAccountTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.accountId,
          referencedTable: $db.gitHubAccountTable,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$GitHubAccountTableTableAnnotationComposer(
                $db: $db,
                $table: $db.gitHubAccountTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }

  Expression<T> gitHubRepositoryTableRefs<T extends Object>(
    Expression<T> Function($$GitHubRepositoryTableTableAnnotationComposer a) f,
  ) {
    final $$GitHubRepositoryTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.gitHubRepositoryTable,
          getReferencedColumn: (t) => t.organizationId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$GitHubRepositoryTableTableAnnotationComposer(
                $db: $db,
                $table: $db.gitHubRepositoryTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$GitHubOrganizationTableTableTableManager
    extends
        RootTableManager<
          _$Database,
          $GitHubOrganizationTableTable,
          GitHubOrganization,
          $$GitHubOrganizationTableTableFilterComposer,
          $$GitHubOrganizationTableTableOrderingComposer,
          $$GitHubOrganizationTableTableAnnotationComposer,
          $$GitHubOrganizationTableTableCreateCompanionBuilder,
          $$GitHubOrganizationTableTableUpdateCompanionBuilder,
          (GitHubOrganization, $$GitHubOrganizationTableTableReferences),
          GitHubOrganization,
          PrefetchHooks Function({
            bool accountId,
            bool gitHubRepositoryTableRefs,
          })
        > {
  $$GitHubOrganizationTableTableTableManager(
    _$Database db,
    $GitHubOrganizationTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$GitHubOrganizationTableTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer:
              () => $$GitHubOrganizationTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer:
              () => $$GitHubOrganizationTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> accountId = const Value.absent(),
                Value<String> login = const Value.absent(),
                Value<String> htmlUrl = const Value.absent(),
                Value<String> avatarUrl = const Value.absent(),
              }) => GitHubOrganizationTableCompanion(
                id: id,
                accountId: accountId,
                login: login,
                htmlUrl: htmlUrl,
                avatarUrl: avatarUrl,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int accountId,
                required String login,
                required String htmlUrl,
                required String avatarUrl,
              }) => GitHubOrganizationTableCompanion.insert(
                id: id,
                accountId: accountId,
                login: login,
                htmlUrl: htmlUrl,
                avatarUrl: avatarUrl,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          $$GitHubOrganizationTableTableReferences(
                            db,
                            table,
                            e,
                          ),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: ({
            accountId = false,
            gitHubRepositoryTableRefs = false,
          }) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (gitHubRepositoryTableRefs) db.gitHubRepositoryTable,
              ],
              addJoins: <
                T extends TableManagerState<
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic
                >
              >(state) {
                if (accountId) {
                  state =
                      state.withJoin(
                            currentTable: table,
                            currentColumn: table.accountId,
                            referencedTable:
                                $$GitHubOrganizationTableTableReferences
                                    ._accountIdTable(db),
                            referencedColumn:
                                $$GitHubOrganizationTableTableReferences
                                    ._accountIdTable(db)
                                    .id,
                          )
                          as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (gitHubRepositoryTableRefs)
                    await $_getPrefetchedData<
                      GitHubOrganization,
                      $GitHubOrganizationTableTable,
                      GitHubRepository
                    >(
                      currentTable: table,
                      referencedTable: $$GitHubOrganizationTableTableReferences
                          ._gitHubRepositoryTableRefsTable(db),
                      managerFromTypedResult:
                          (p0) =>
                              $$GitHubOrganizationTableTableReferences(
                                db,
                                table,
                                p0,
                              ).gitHubRepositoryTableRefs,
                      referencedItemsForCurrentItem:
                          (item, referencedItems) => referencedItems.where(
                            (e) => e.organizationId == item.id,
                          ),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$GitHubOrganizationTableTableProcessedTableManager =
    ProcessedTableManager<
      _$Database,
      $GitHubOrganizationTableTable,
      GitHubOrganization,
      $$GitHubOrganizationTableTableFilterComposer,
      $$GitHubOrganizationTableTableOrderingComposer,
      $$GitHubOrganizationTableTableAnnotationComposer,
      $$GitHubOrganizationTableTableCreateCompanionBuilder,
      $$GitHubOrganizationTableTableUpdateCompanionBuilder,
      (GitHubOrganization, $$GitHubOrganizationTableTableReferences),
      GitHubOrganization,
      PrefetchHooks Function({bool accountId, bool gitHubRepositoryTableRefs})
    >;
typedef $$GitHubRepositoryTableTableCreateCompanionBuilder =
    GitHubRepositoryTableCompanion Function({
      Value<int> id,
      required int organizationId,
      required String name,
      required String htmlUrl,
      required String avatarUrl,
    });
typedef $$GitHubRepositoryTableTableUpdateCompanionBuilder =
    GitHubRepositoryTableCompanion Function({
      Value<int> id,
      Value<int> organizationId,
      Value<String> name,
      Value<String> htmlUrl,
      Value<String> avatarUrl,
    });

final class $$GitHubRepositoryTableTableReferences
    extends
        BaseReferences<
          _$Database,
          $GitHubRepositoryTableTable,
          GitHubRepository
        > {
  $$GitHubRepositoryTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $GitHubOrganizationTableTable _organizationIdTable(_$Database db) =>
      db.gitHubOrganizationTable.createAlias(
        $_aliasNameGenerator(
          db.gitHubRepositoryTable.organizationId,
          db.gitHubOrganizationTable.id,
        ),
      );

  $$GitHubOrganizationTableTableProcessedTableManager get organizationId {
    final $_column = $_itemColumn<int>('organization_id')!;

    final manager = $$GitHubOrganizationTableTableTableManager(
      $_db,
      $_db.gitHubOrganizationTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_organizationIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$GitHubRepositoryTableTableFilterComposer
    extends Composer<_$Database, $GitHubRepositoryTableTable> {
  $$GitHubRepositoryTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get htmlUrl => $composableBuilder(
    column: $table.htmlUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get avatarUrl => $composableBuilder(
    column: $table.avatarUrl,
    builder: (column) => ColumnFilters(column),
  );

  $$GitHubOrganizationTableTableFilterComposer get organizationId {
    final $$GitHubOrganizationTableTableFilterComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.organizationId,
          referencedTable: $db.gitHubOrganizationTable,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$GitHubOrganizationTableTableFilterComposer(
                $db: $db,
                $table: $db.gitHubOrganizationTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }
}

class $$GitHubRepositoryTableTableOrderingComposer
    extends Composer<_$Database, $GitHubRepositoryTableTable> {
  $$GitHubRepositoryTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get htmlUrl => $composableBuilder(
    column: $table.htmlUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get avatarUrl => $composableBuilder(
    column: $table.avatarUrl,
    builder: (column) => ColumnOrderings(column),
  );

  $$GitHubOrganizationTableTableOrderingComposer get organizationId {
    final $$GitHubOrganizationTableTableOrderingComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.organizationId,
          referencedTable: $db.gitHubOrganizationTable,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$GitHubOrganizationTableTableOrderingComposer(
                $db: $db,
                $table: $db.gitHubOrganizationTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }
}

class $$GitHubRepositoryTableTableAnnotationComposer
    extends Composer<_$Database, $GitHubRepositoryTableTable> {
  $$GitHubRepositoryTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get htmlUrl =>
      $composableBuilder(column: $table.htmlUrl, builder: (column) => column);

  GeneratedColumn<String> get avatarUrl =>
      $composableBuilder(column: $table.avatarUrl, builder: (column) => column);

  $$GitHubOrganizationTableTableAnnotationComposer get organizationId {
    final $$GitHubOrganizationTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.organizationId,
          referencedTable: $db.gitHubOrganizationTable,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$GitHubOrganizationTableTableAnnotationComposer(
                $db: $db,
                $table: $db.gitHubOrganizationTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }
}

class $$GitHubRepositoryTableTableTableManager
    extends
        RootTableManager<
          _$Database,
          $GitHubRepositoryTableTable,
          GitHubRepository,
          $$GitHubRepositoryTableTableFilterComposer,
          $$GitHubRepositoryTableTableOrderingComposer,
          $$GitHubRepositoryTableTableAnnotationComposer,
          $$GitHubRepositoryTableTableCreateCompanionBuilder,
          $$GitHubRepositoryTableTableUpdateCompanionBuilder,
          (GitHubRepository, $$GitHubRepositoryTableTableReferences),
          GitHubRepository,
          PrefetchHooks Function({bool organizationId})
        > {
  $$GitHubRepositoryTableTableTableManager(
    _$Database db,
    $GitHubRepositoryTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$GitHubRepositoryTableTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer:
              () => $$GitHubRepositoryTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer:
              () => $$GitHubRepositoryTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> organizationId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> htmlUrl = const Value.absent(),
                Value<String> avatarUrl = const Value.absent(),
              }) => GitHubRepositoryTableCompanion(
                id: id,
                organizationId: organizationId,
                name: name,
                htmlUrl: htmlUrl,
                avatarUrl: avatarUrl,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int organizationId,
                required String name,
                required String htmlUrl,
                required String avatarUrl,
              }) => GitHubRepositoryTableCompanion.insert(
                id: id,
                organizationId: organizationId,
                name: name,
                htmlUrl: htmlUrl,
                avatarUrl: avatarUrl,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          $$GitHubRepositoryTableTableReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: ({organizationId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                T extends TableManagerState<
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic
                >
              >(state) {
                if (organizationId) {
                  state =
                      state.withJoin(
                            currentTable: table,
                            currentColumn: table.organizationId,
                            referencedTable:
                                $$GitHubRepositoryTableTableReferences
                                    ._organizationIdTable(db),
                            referencedColumn:
                                $$GitHubRepositoryTableTableReferences
                                    ._organizationIdTable(db)
                                    .id,
                          )
                          as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$GitHubRepositoryTableTableProcessedTableManager =
    ProcessedTableManager<
      _$Database,
      $GitHubRepositoryTableTable,
      GitHubRepository,
      $$GitHubRepositoryTableTableFilterComposer,
      $$GitHubRepositoryTableTableOrderingComposer,
      $$GitHubRepositoryTableTableAnnotationComposer,
      $$GitHubRepositoryTableTableCreateCompanionBuilder,
      $$GitHubRepositoryTableTableUpdateCompanionBuilder,
      (GitHubRepository, $$GitHubRepositoryTableTableReferences),
      GitHubRepository,
      PrefetchHooks Function({bool organizationId})
    >;

class $DatabaseManager {
  final _$Database _db;
  $DatabaseManager(this._db);
  $$GitHubAccountTableTableTableManager get gitHubAccountTable =>
      $$GitHubAccountTableTableTableManager(_db, _db.gitHubAccountTable);
  $$GitHubOrganizationTableTableTableManager get gitHubOrganizationTable =>
      $$GitHubOrganizationTableTableTableManager(
        _db,
        _db.gitHubOrganizationTable,
      );
  $$GitHubRepositoryTableTableTableManager get gitHubRepositoryTable =>
      $$GitHubRepositoryTableTableTableManager(_db, _db.gitHubRepositoryTable);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(database)
const databaseProvider = DatabaseProvider._();

final class DatabaseProvider
    extends $FunctionalProvider<Database, Database, Database>
    with $Provider<Database> {
  const DatabaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'databaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$databaseHash();

  @$internal
  @override
  $ProviderElement<Database> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Database create(Ref ref) {
    return database(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Database value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Database>(value),
    );
  }
}

String _$databaseHash() => r'b75e890cd139885a1a0cc0aed2268e451201765d';
