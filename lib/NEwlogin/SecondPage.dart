import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../fururebuilder/FutureBuilder_tak.dart';

class Secondpage extends StatefulWidget {
  const Secondpage({Key? key}) : super(key: key);

  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {

  bool id = true;

  Future data() async {
    final pre = await SharedPreferences.getInstance();
    pre.getBool("id");
    setState(() {
      id;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
              child: Text("$id", style: TextStyle(fontSize: 30),)
          ),

          ElevatedButton(onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FutureBilder_task(),));
          }, child: Text("back"))


        ],
      ),
    );
  }
}
