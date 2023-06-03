import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Colorpage extends StatefulWidget {
  const Colorpage({Key? key}) : super(key: key);

  @override
  State<Colorpage> createState() => _ColorpageState();
}

class _ColorpageState extends State<Colorpage> {
  Color clr = Colors.red;

  int a = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          a++;

          if (a == 0) {

            clr = Colors.black;
          } else{
            clr = Colors.blueAccent;
          }

          
          setState(() {
            clr;
          });


        },
      ),
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Text("Color changing page"),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: clr,
        ),
      ),
    );
  }
}
