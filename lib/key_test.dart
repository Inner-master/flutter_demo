import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_demo/global_key_test_page.dart';

class ColorStatelessBox extends StatelessWidget {
  ColorStatelessBox({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(Random().nextInt(256), Random().nextInt(256), Random().nextInt(256), 1),
      width: 100,
      height: 100,
    );
  }
}

class ColorStatefulBox extends StatefulWidget {
  const ColorStatefulBox({Key? key, required this.color}) : super(key: key);
  final Color color;

  @override
  State<ColorStatefulBox> createState() => _ColorStatefulBoxState();
}

class _ColorStatefulBoxState extends State<ColorStatefulBox> {
  int count = 0;

  @override
  void deactivate() {
    super.deactivate();
    print("${widget.hashCode} ${widget.color} deactivate");
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        count++;
        setState(() {});
      },
      child: Container(
        color: widget.color,
        width: 100 + count.toDouble(),
        height: 100 + count.toDouble(),
        child: Center(
          child: Text(
            count.toString(),
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  Key key = GlobalKey(debugLabel: "blue");
  List<Widget> widgetList = [];
  bool warp = false;
  @override
  void initState() {
    super.initState();
    widgetList = [
      ColorStatefulBox(
        key: key,
        color: Colors.blue,
      ),
      ColorStatefulBox(
        key: GlobalKey(debugLabel: "green"),
        color: Colors.green,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    Widget child = ColorStatefulBox(
        key: GlobalKey(debugLabel: "orange"),
        color: Colors.orange);
    return Scaffold(
      appBar: AppBar(
        title: const Text("key test"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ...widgetList,
            warp ? child : Container(child: child),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 100,
        child: Column(children: [
          GestureDetector(
            onTap: () {
              widgetList = widgetList.reversed.toList();
              setState(() {});
            },
            child: const Icon(
              Icons.add,
            ),
          ),
          GestureDetector(
            onTap: () {
              warp = !warp;
              setState(() {});
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) => GlobalKeyTestPage()));
            },
            child: const Icon(
              Icons.map,
            ),
          )
        ]),
      ),
    );
  }
}
