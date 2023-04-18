import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'counter_usecase.freezed.dart';

@freezed
abstract class CounterState with _$CounterState {
  const factory CounterState({
    @Default(0) int count,
    @Default(true) bool isEnabled,
  }) = _CounterState;
}

class CounterUsecase extends StateNotifier<CounterState> with LocatorMixin {
  CounterUsecase(): super(const CounterState());

  void increment() {
    state = state.copyWith(count: state.count + 1);
  }

  void disableCounter() {
    state = state.copyWith(isEnabled: false);
  }
}