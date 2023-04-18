import 'package:flutter/material.dart';
import 'package:flutter_state_notifier_template/presentation/app.dart';
import 'package:flutter_state_notifier_template/usecase/counter_usecase.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';

Future<List<SingleChildWidget>> providers() async {
  return <SingleChildWidget>[
    Provider(create: (context) => GlobalKey<NavigatorState>()),
    ..._repositoryProviders(),
    ...await _usecaseProviders,
  ];
}

Future<List<SingleChildWidget>> get _usecaseProviders async {
  return <SingleChildWidget>[
    StateNotifierProvider<CounterUsecase, CounterState>(
      create: (_) => CounterUsecase(),
    ),
  ];
}

List<SingleChildWidget> _repositoryProviders() {
  return <SingleChildWidget>[];
}

void main() async {
  runApp(
    MultiProvider(
      providers: await providers(),
      child: const App(),
    ),
  );
}
