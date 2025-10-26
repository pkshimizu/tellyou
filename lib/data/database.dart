import 'dart:developer';
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import "package:sqlite3/sqlite3.dart";
import 'package:tellyou/data/tables/github_tables.dart';
import "package:tellyou/domain/models/github.dart";

import '../config.dart';

part "database.g.dart";

@DriftDatabase(
  tables: [GitHubAccountTable, GitHubOrganizationTable, GitHubRepositoryTable],
)
class Database extends _$Database {
  Database() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFilePath = Config().dbFilePath;
    final file = File(dbFilePath.absolutePath);
    log("local storage file: ${file.path}");

    final dbTempDirPath = Config().dbTempDirPath;
    sqlite3.tempDirectory = dbTempDirPath.absolutePath;

    return NativeDatabase.createInBackground(file);
  });
}
