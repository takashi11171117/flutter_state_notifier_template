import 'package:flutter/material.dart';
import 'package:flutter_state_notifier_template/usecase/counter_usecase.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
            Text(
              context
                  .select<CounterState, int>((state) => state.count)
                  .toString(),
                style: const TextStyle(
                  fontSize: 36,
                )
            ),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                context.read<CounterUsecase>().increment();
              },
            ),
          ],
        ),
      ),
    );
  }
}
