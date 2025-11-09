import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tellyou/domain/models/github.dart';

class GitHubRestClient {
  static const String _baseUrl = 'https://api.github.com';

  Future<GitHubRestUser> getUser(String pat) async {
    // GitHub APIでユーザー情報を取得
    final userResponse = await http.get(
      Uri.parse('$_baseUrl/user'),
      headers: {
        'Authorization': 'Bearer $pat',
        'Accept': 'application/vnd.github+json',
        'X-GitHub-Api-Version': '2022-11-28',
      },
    );

    if (userResponse.statusCode != 200) {
      throw Exception(
        'Failed to get user info: ${userResponse.statusCode} ${userResponse.body}',
      );
    }

    final userData = json.decode(userResponse.body) as Map<String, dynamic>;

    // PATの有効期限を取得
    // Fine-grained PATsの場合、レスポンスヘッダーに含まれる
    final expirationHeader =
        userResponse.headers['github-authentication-token-expiration'];

    DateTime expiresAt;
    if (expirationHeader != null) {
      expiresAt = DateTime.parse(expirationHeader);
    } else {
      throw Exception('Failed to get expiration');
    }

    return GitHubRestUser(
      login: userData['login'] as String,
      name: (userData['name'] as String?) ?? userData['login'] as String,
      htmlUrl: userData['html_url'] as String,
      avatarUrl: userData['avatar_url'] as String,
      expiresAt: expiresAt,
    );
  }

  Future<List<GitHubRestOrganization>> getOrganizations(String pat) async {
    // GitHub APIで組織情報を取得
    final orgsResponse = await http.get(
      Uri.parse('$_baseUrl/user/orgs?per_page=100'),
      headers: {
        'Authorization': 'Bearer $pat',
        'Accept': 'application/vnd.github+json',
        'X-GitHub-Api-Version': '2022-11-28',
      },
    );

    if (orgsResponse.statusCode != 200) {
      throw Exception(
        'Failed to get organizations: ${orgsResponse.statusCode} ${orgsResponse.body}',
      );
    }

    final orgsData = json.decode(orgsResponse.body) as List<dynamic>;

    return orgsData.map((orgData) {
      final org = orgData as Map<String, dynamic>;

      return GitHubRestOrganization(
        login: org["login"],
        avatarUrl: org["avatar_url"],
      );
    }).toList();
  }

  Future<List<GitHubRestRepository>> getRepositories(
    String pat,
    String org,
  ) async {
    // GitHub APIでリポジトリ情報を取得
    final reposResponse = await http.get(
      Uri.parse('$_baseUrl/orgs/$org/repos?per_page=100'),
      headers: {
        'Authorization': 'Bearer $pat',
        'Accept': 'application/vnd.github+json',
        'X-GitHub-Api-Version': '2022-11-28',
      },
    );

    if (reposResponse.statusCode != 200) {
      throw Exception(
        'Failed to get repositories: ${reposResponse.statusCode} ${reposResponse.body}',
      );
    }

    final reposData = json.decode(reposResponse.body) as List<dynamic>;

    return reposData.map((repo) {
      final repoMap = repo as Map<String, dynamic>;

      return GitHubRestRepository(
        name: repoMap['name'] as String,
        htmlUrl: repoMap['html_url'] as String,
      );
    }).toList();
  }
}
