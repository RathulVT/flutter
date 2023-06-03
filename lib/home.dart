import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("flutter"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text("sdfghj"),
          Text("sdfghj"),
          Text("sdfghj"),
          Text("sdfghj"),
          Text("sdfghj"),
        ],
      ),
    );
  }
}



