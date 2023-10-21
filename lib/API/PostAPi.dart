import 'package:flutter/material.dart';

class PostApi extends StatefulWidget {
  PostApi({Key? key}) : super(key: key);

  @override
  State<PostApi> createState() => _PostApiState();
}

class _PostApiState extends State<PostApi> {
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
          ],
        ),
      ),
    );
  }
}
