import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Colorpage extends StatefulWidget {
  const Colorpage({Key? key}) : super(key: key);

  @override
  State<Colorpage> createState() => _ColorpageState();
}

class _ColorpageState extends State<Colorpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Text("Color changing page"),
      ),
      body: Container(),
    );
  }
}
