import 'package:flutter/material.dart';

class Callspage extends StatefulWidget {
  const Callspage({Key? key}) : super(key: key);

  @override
  State<Callspage> createState() => _CallspageState();
}

class _CallspageState extends State<Callspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Center(
        child:
        ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text("Back")),
      )
    );
  }
}
