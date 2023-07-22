import 'package:flutter/material.dart';

class Gmailpage extends StatefulWidget {
  const Gmailpage({Key? key}) : super(key: key);

  @override
  State<Gmailpage> createState() => _GmailpageState();
}

class _GmailpageState extends State<Gmailpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(

        child: DrawerHeader(
            child: ListView(children: [
          CircleAvatar(
            child: Text("R"),),
              Divider(),
              ListTile(
                leading: Icon(Icons.photo_library_sharp),title: Text("ALL Inboxes"),
              )
        ])),
      ),
      appBar: AppBar(),
    );
  }
}
