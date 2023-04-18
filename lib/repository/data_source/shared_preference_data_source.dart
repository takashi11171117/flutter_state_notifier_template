import 'package:flutter_state_notifier_template/repository/shared_preference_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesDataSource implements SharedPreferencesRepository {
  @override
  Future<T?> load<T>(SharedPreferencesKey key) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      if (T.toString() == 'int') {
        return prefs.getInt(key.rawValue) as T;
      }
      if (T.toString() == 'double') {
        return prefs.getDouble(key.rawValue) as T;
      }
      if (T.toString() == 'bool') {
        return prefs.getBool(key.rawValue) as T;
      }
      if (T.toString() == 'String') {
        return prefs.getString(key.rawValue) as T;
      }
      if (T.toString() == 'List<String>') {
        return prefs.getStringList(key.rawValue) as T;
      }
      return null;
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future<bool> save<T>(SharedPreferencesKey key, T value) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      if (T.toString() == 'int') {
        return prefs.setInt(key.rawValue, value as int);
      }
      if (T.toString() == 'double') {
        return prefs.setDouble(key.rawValue, value as double);
      }
      if (T.toString() == 'bool') {
        return prefs.setBool(key.rawValue, value as bool);
      }
      if (T.toString() == 'String') {
        return prefs.setString(key.rawValue, value as String);
      }
      if (T.toString() == 'List<String>') {
        return prefs.setStringList(key.rawValue, value as List<String>);
      }
      return false;
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future<bool> exists(SharedPreferencesKey key) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.containsKey(key.rawValue);
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future<bool> clear() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.clear();
    } on Exception catch (_) {
      rethrow;
    }
  }
}
