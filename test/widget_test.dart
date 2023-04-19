// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:flutter_state_notifier_template/presentation/pages/home_page.dart';
import 'package:flutter_state_notifier_template/presentation/pages/home_page_model.dart';
import 'package:flutter_state_notifier_template/usecase/counter_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

void main() {
  testWidgets('Counter Button Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      home: MultiProvider(
        providers: [
          StateNotifierProvider<TestCounterUsecase, CounterState>(
            create: (_) => TestCounterUsecase(),
          ),
          StateNotifierProvider<TestHomeModel, HomeModelState>(
            create: (_) => TestHomeModel(),
          )
        ],
        child: const HomePage.test(),
      ),
    ));

    final text = find.byWidgetPredicate((widget) => widget is CounterText);
    expect(text, findsOneWidget);

    final iconButton = find.byWidgetPredicate((widget) => widget is IconButton);
    expect(iconButton, findsWidgets);
  });
}

class TestHomeModel extends StateNotifier<HomeModelState>
    with LocatorMixin
    implements HomeModel {
  TestHomeModel() : super(const HomeModelState());

  @override
  void increment() {
    print('increment');
  }

  @override
  void decrement() {
    print('decrement');
  }
}

class TestCounterUsecase extends StateNotifier<CounterState>
    with LocatorMixin
    implements CounterUsecase {
  TestCounterUsecase() : super(const CounterState());

  Future<void> increment() async {}

  Future<void> decrement() async {}
}
