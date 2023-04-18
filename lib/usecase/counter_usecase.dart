import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

import 'package:flutter_state_notifier_template/repository/shared_preference_repository.dart';

part 'counter_usecase.freezed.dart';

@freezed
abstract class CounterState with _$CounterState {
  const factory CounterState({
    @Default(0) int count,
    @Default(true) bool isEnabled,
  }) = _CounterState;
}

class CounterUsecase extends StateNotifier<CounterState> with LocatorMixin {
  CounterUsecase() : super(const CounterState());

  /// MultiProviderで親コンポーネントから注入していて、LocatorMixinをしようしているので暗黙的に取得できる
  SharedPreferencesRepository get _sharedPreferencesRepository =>
      read<SharedPreferencesRepository>();

  @override
  void initState() {
    _configure();
    super.initState();
  }

  Future<void> _configure() async {
    try {
      final counter = await _sharedPreferencesRepository.load<int>(
        SharedPreferencesKey.counter,
      );

      if (counter != null) state = state.copyWith(count: counter);
    } on Exception catch (e) {
      rethrow;
    }
  }

  Future<void> increment() async {
    state = state.copyWith(count: state.count + 1);
    await _sharedPreferencesRepository.save<int>(
        SharedPreferencesKey.counter, state.count);
  }

  Future<void> decrement() async {
    state = state.copyWith(count: max(state.count - 1, 0));
    await _sharedPreferencesRepository.save<int>(
        SharedPreferencesKey.counter, state.count);
  }
}
