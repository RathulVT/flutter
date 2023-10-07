import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'SecondPage.dart';

class Loginpage_task extends StatefulWidget {
  Loginpage_task({Key? key}) : super(key: key);

  @override
  State<Loginpage_task> createState() => _Loginpage_taskState();

}

class _Loginpage_taskState extends State<Loginpage_task> {

  bool id = true;
  Future data ()async{
    final pre = await SharedPreferences.getInstance();
   var temp= pre.getBool("id")??false;
    setState(() {
      id =temp;
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  id = !id;
                  SharedPreferences pre = await SharedPreferences.getInstance();
                  pre.setBool("id", id);
                  setState(() {

                  });

                },
                child: Text("change")),




            id?Text("Login"):Text("logout"),

          ],
        ),
      ),
    );
  }
}
