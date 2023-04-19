import 'package:flutter/material.dart';
import 'package:flutter_state_notifier_template/presentation/app.dart';
import 'package:flutter_state_notifier_template/repository/shared_preference_repository.dart';
import 'package:flutter_state_notifier_template/repository/data_source/shared_preference_data_source.dart';
import 'package:flutter_state_notifier_template/usecase/counter_usecase.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';

Future<List<SingleChildWidget>> providers() async {
  return <SingleChildWidget>[
    ..._repositoryProviders(),
    ...await _usecaseProviders,
  ];
}

List<SingleChildWidget> _repositoryProviders() {
  return <SingleChildWidget>[
    Provider<SharedPreferencesRepository>( /// ここのGenericsにabstractクラス入れるかは任意
      create: (_) => SharedPreferencesDataSource(),
    ),
  ];
}

Future<List<SingleChildWidget>> get _usecaseProviders async {
  return <SingleChildWidget>[
    StateNotifierProvider<CounterUsecase, CounterState>(
      create: (_) => CounterUsecase(),
    ),
  ];
}

void main() async {
  runApp(
    /// RepositoryとUsecase層をここで注入しておく
    MultiProvider(
      providers: await providers(),
      child: const App(),
    ),
  );
}
