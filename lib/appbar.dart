import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Appbartask extends StatefulWidget {
  const Appbartask({Key? key}) : super(key: key);

  @override
  State<Appbartask> createState() => _AppbartaskState();
}

class _AppbartaskState extends State<Appbartask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.account_circle,size: 40,color: Colors.red,),
        title: Text("AppBar",style: TextStyle(color: Colors.red),),
        backgroundColor: Colors.grey,
        centerTitle: true,
        actions: [Icon(Icons.add_box),
        Icon(Icons.add),
        Icon(Icons.ac_unit)],
      ),
    );
  }
}
