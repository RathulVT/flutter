import 'package:flutter/material.dart';
import 'package:untitled/NEwlogin/SecondPage.dart';

class FutureBilder_task extends StatefulWidget {
  const FutureBilder_task({Key? key}) : super(key: key);

  @override
  State<FutureBilder_task> createState() => _FutureBilder_taskState();
}

class _FutureBilder_taskState extends State<FutureBilder_task> {
  int count = 0;

  Future<int> countdown() async {
    Future.delayed(Duration(seconds: 5), () {
      count++;
      setState(() {

      });
    },);
    return count;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    countdown();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder<int>(
              future: countdown(),
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                }
                else if (snapshot.hasError) {
                  return Center(child: Text("Error"));
                }
                else if (snapshot.hasData) {
                  return Center(child: Text(count.toString()));
                }
                else {
                  return Center(child: Text("some error"));
                }
              },
            ),

            ElevatedButton(onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Secondpage(),));
            }, child: Text("next page"))
          ],
        ),
      ),
    );
  }
}
