// Dart imports:
import "dart:io";

// Package imports:
import "package:path_provider/path_provider.dart";
import "package:yaml/yaml.dart";

// Project imports:
import "domain/values/path.dart";

const env = String.fromEnvironment("env");

// アプリケーションの構成情報
class Config {
  static final Config _instance = Config._internal();
  final Map _values = {};
  Directory? applicationCacheDirectory;

  factory Config() => _instance;

  Config._internal() {
    final filePath = "lib/configs/$env.yaml";
    final yamlString = File(filePath).readAsStringSync();
    final doc = loadYamlDocument(yamlString);
    _values.addAll((doc.contents as Map)["configs"]);
  }

  Future<void> initialize() async {
    applicationCacheDirectory = await getApplicationCacheDirectory();
  }

  Path get dataDir {
    final dataDir = _string("data_dir");
    if (dataDir.isEmpty) {
      return Path(applicationCacheDirectory!.path);
    }
    return Path(dataDir);
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

  String _string(String key) {
    final value = _values[key];
    if (value is String) {
      return value;
    }
    throw Exception("Invalid node type");
  }
}
