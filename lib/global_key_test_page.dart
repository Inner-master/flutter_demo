import 'package:flutter/material.dart';
import 'package:flutter_demo/key_test.dart';

class GlobalKeyTestPage extends StatefulWidget {

  @override
  _GlobalKeyTestPageState createState() => _GlobalKeyTestPageState();
}

class _GlobalKeyTestPageState extends State<GlobalKeyTestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GlobalKeyTestPage"),
      ),
      body: Center(
          child: ColorStatefulBox(
        color: Colors.blue,
      ),
      ),
    );
  }
}
