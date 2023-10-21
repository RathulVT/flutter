import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class PostTask extends StatefulWidget {
  const PostTask({Key? key}) : super(key: key);

  @override
  State<PostTask> createState() => _PostTaskState();
}

class _PostTaskState extends State<PostTask> {
  getdata(
      {required name, required email, required phone, required password}) async {
    final res = await post(
        Uri.parse("https://dummy.restapiexample.com/api/v1/create"), body: {
      name: "name",
      email: "email",
      phone: "phone",
      password: "password"
    });
    if (res.statusCode == 200) {
      var productdetails = jsonDecode(res.body);
      print(productdetails["data"]);
    
    }
  }


  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController Phone = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
                decoration: InputDecoration(hintText: "name"),
                controller: name),
            Divider(),
            TextField(
              decoration: InputDecoration(hintText: "Email"),
              controller: email,
            ),
            Divider(),
            TextField(
              decoration: InputDecoration(hintText: "Phone number"),
              controller: Phone,
            ),
            Divider(),
            TextField(
              decoration: InputDecoration(hintText: "Password"),
              controller: password,
            ),
            ElevatedButton(onPressed: () async {
              getdata(
                name: name.text,
                email: email.text,
                phone: Phone.text.toString(),
                password: password.text.toString()
              );
            }, child: Text("save")),
          ],
        ),
      ),
    );
  }
}
