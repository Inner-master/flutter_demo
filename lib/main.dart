import 'package:flutter/material.dart';
import 'package:flutter_demo/tabs/main_tab.dart';

import 'demo_test/key_test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainTab(),
    );
  }
}
