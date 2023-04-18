import 'package:flutter/material.dart';
import 'package:flutter_state_notifier_template/presentation/pages/home_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter State Notifier Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage.wrapped(),
    );
  }
}