import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:flutter_state_notifier_template/usecase/counter_usecase.dart';

part 'home_page_model.freezed.dart';

@freezed
abstract class HomeModelState with _$HomeModelState {
  const factory HomeModelState({
    @Default(0) int count,
    @Default(true) bool isEnabled,
  }) = _HomeModelState;
}

class HomeModel extends StateNotifier<HomeModelState> with LocatorMixin {
  HomeModel(): super(const HomeModelState());

  CounterUsecase get _counterUsecase => read<CounterUsecase>();

  void increment() {
    _counterUsecase.increment();
  }

  void disableCounter() {
    _counterUsecase.disableCounter();
  }
}