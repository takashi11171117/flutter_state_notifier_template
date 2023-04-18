import 'dart:async';

enum SharedPreferencesKey {
  counter,
}

const _counter = 'counter';

extension SharedPreferencesKeyExtension on SharedPreferencesKey {
  String get rawValue {
    switch (this) {
      case SharedPreferencesKey.counter:
        return _counter;
    }
  }
}

abstract class SharedPreferencesRepository {
  Future<T?> load<T>(SharedPreferencesKey key);
  Future<bool> save<T>(SharedPreferencesKey key, T value);
  Future<bool> exists(SharedPreferencesKey key);
  Future<bool> clear();
}
