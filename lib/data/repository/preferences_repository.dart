import '../model/pref_keys.dart';
import 'database_config_repository.dart';

class PreferencesRepository {

  PreferencesRepository(this._databaseConfig);

  final DatabaseConfigRepository _databaseConfig;

  Future<String?> getAaptPath() {
    return _databaseConfig.getStringOrNull(PrefKeys.aaptPath);
  }

  Future<bool> setAaptPath(String aaptPath) async {
    final result = await _databaseConfig.setString(PrefKeys.aaptPath, aaptPath);
    return result != null;
  }

  Future<String?> getDestPath() async {
    return _databaseConfig.getStringOrNull(PrefKeys.destPath);
  }

  Future<bool> setDestPath(String destPath) async {
    final result = await _databaseConfig.setString(PrefKeys.destPath, destPath);
    return result != null;
  }

  Future<bool?> getCopyToFolder() async {
    return _databaseConfig.getBool(PrefKeys.copyToFolder, false);
  }

  Future<bool> setCopyToFolder(bool copyToFolder) async {
    final result = await _databaseConfig.setBool(PrefKeys.copyToFolder, copyToFolder);
    return result != null;
  }

  Future<String?> getPattern() async {
    return _databaseConfig.getStringOrNull(PrefKeys.pattern);
  }

  Future<bool> setPattern(String pattern) async {
    final result = await _databaseConfig.setString(PrefKeys.pattern, pattern);
    return result != null;
  }
}
