import 'package:freezed_annotation/freezed_annotation.dart';

part "github.freezed.dart";

@freezed
sealed class GitHubAccount with _$GitHubAccount {
  const GitHubAccount._();

  const factory GitHubAccount({
    required int id,
    required String login,
    required String name,
    required String htmlUrl,
    required String avatarUrl,
    required String pat,
    required DateTime patExpiredAt,
    @Default([]) List<GitHubOrganization> organizations,
  }) = _GitHubAccount;
}

@freezed
sealed class GitHubOrganization with _$GitHubOrganization {
  const GitHubOrganization._();

  const factory GitHubOrganization({
    required int id,
    required int accountId,
    required String login,
    required String htmlUrl,
    required String avatarUrl,
    @Default([]) List<GitHubRepository> repositories,
  }) = _GitHubOrganization;
}

@freezed
sealed class GitHubRepository with _$GitHubRepository {
  const GitHubRepository._();

  const factory GitHubRepository({
    required int id,
    required int organizationId,
    required String name,
    required String htmlUrl,
    required String avatarUrl,
  }) = _GitHubRepository;
}

@freezed
sealed class GitHubRestUser with _$GitHubRestUser {
  const GitHubRestUser._();

  const factory GitHubRestUser({
    required String login,
    required String name,
    required String htmlUrl,
    required String avatarUrl,
    required DateTime expiresAt,
  }) = _GitHubRestUser;
}

@freezed
sealed class GitHubRestOrganization with _$GitHubRestOrganization {
  const GitHubRestOrganization._();

  const factory GitHubRestOrganization({
    required String login,
    required String avatarUrl,
  }) = _GitHubRestOrganization;
}

@freezed
sealed class GitHubRestRepository with _$GitHubRestRepository {
  const GitHubRestRepository._();

  const factory GitHubRestRepository({
    required String name,
    required String htmlUrl,
  }) = _GitHubRestRepository;
}
