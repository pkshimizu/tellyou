import "dart:io";

import "package:path/path.dart" as p;

class Path {
  Path(String path) : _path = path;

  final String _path;

  File get file => File(_path);

  Directory get dir => Directory(_path);

  String get absolutePath => _path;

  Path join(String path) {
    return Path(p.join(_path, path));
  }

  void createDirectories() {
    if (!dir.existsSync()) {
      dir.createSync(recursive: true);
    }
  }
}
