import 'package:flutter/material.dart';

class MainTab extends StatefulWidget{
  final int? initIndex;
  const MainTab({Key? key,this.initIndex}) : super(key: key);
  @override
  _MainTabState createState() => _MainTabState();
}
class _MainTabState extends State<MainTab>{

  Widget _buildTabs(){
    return TabBar(
      tabs: [
        Tab(text: "首页",icon: Icon(Icons.home)),
        Tab(text: "我的",icon: Icon(Icons.person)),
      ],
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("MainTab"),
      ),
      body: Center(
        child: Text("MainTab"),
      ),
      bottomNavigationBar: Container(
          height: 100,
          color: Colors.red,
          child:Text("hello")),
    );
  }
}