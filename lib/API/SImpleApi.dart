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
      print(res.body);
    }else {
      print ("some error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: getdate(),
      ),
    );
  }
}
