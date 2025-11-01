import "dart:io";

import "package:path_provider/path_provider.dart";

import "domain/values/path.dart";

const env = String.fromEnvironment("env");

// アプリケーションの構成情報
class Config {
  static final Config _instance = Config._internal();
  Directory? applicationCacheDirectory;

  factory Config() => _instance;

  Config._internal();

  Future<void> initialize() async {
    applicationCacheDirectory = await getApplicationCacheDirectory();
  }

  Path get dataDir {
    return Path(applicationCacheDirectory!.path);
  }

  Path get dbFilePath {
    return dataDir.join("db.sqlite");
  }

  Path get dbTempDirPath {
    return dataDir.join("temp");
  }

  Path getApiDirPath(int apiId) {
    return dataDir.join("apis").join(apiId.toString());
  }

  Path getApiIconFilePath(int apiId) {
    final dirPath = getApiDirPath(apiId);
    dirPath.createDirectories();
    return dirPath.join("icon.png");
  }
}
