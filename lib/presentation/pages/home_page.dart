import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:flutter_state_notifier_template/usecase/counter_usecase.dart';
import 'package:provider/provider.dart';
import 'package:flutter_state_notifier_template/presentation/pages/home_page_model.dart';

class HomePage extends StatelessWidget {
  const HomePage._({Key? key}) : super(key: key);

  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<HomeModel, HomeModelState>(
          create: (_) => HomeModel(),
        )
      ],
      child: const HomePage._(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'ホーム',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CounterText(),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                context.read<HomeModel>().increment();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CounterText extends StatelessWidget {
  const CounterText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      context.select<CounterState, int>((state) => state.count).toString(),
      style: const TextStyle(
        fontSize: 36,
      ),
    );
  }
}
