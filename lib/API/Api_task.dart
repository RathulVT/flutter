import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Api_task extends StatefulWidget {
  const Api_task({Key? key}) : super(key: key);

  @override
  State<Api_task> createState() => _Api_taskState();
}

class _Api_taskState extends State<Api_task> {
  getdatas() async {
    final res = await get(Uri.parse("https://dog.ceo/api/breeds/image/random"));
    if (res.statusCode == 200) {
      var data = jsonDecode(res.body);
      return data;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: getdatas(),
          builder: (context,AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (snapshot.hasData) {
              return Column(
                children: [
                   Image(image: NetworkImage(snapshot.data["message"]),)
                  // Text(snapshot.data["message"].toString())
                ],
              );
            } else {
              return Text("something wnt wrong");
            }
          },
        ),
      ),
    );
  }
}
