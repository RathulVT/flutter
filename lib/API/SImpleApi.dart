import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class SimpleApi extends StatefulWidget {
  const SimpleApi({Key? key}) : super(key: key);

  @override
  State<SimpleApi> createState() => _SimpleApiState();
}

class _SimpleApiState extends State<SimpleApi> {
  getdate() async {
    final res = await get(Uri.parse("https://dummyjson.com/carts"));
    if (res.statusCode==200) {
      var data = jsonDecode(res.body);
      return data;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(future: getdate(),builder: (context, AsyncSnapshot snapshot) {
          if(snapshot.hasData){
            return Text("${getdate()}");
          }else{
            return Center(child: Text("something wrong"));
          }
        },),
      ),
    );
  }
}
