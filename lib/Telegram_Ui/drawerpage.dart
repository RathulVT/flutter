import 'package:flutter/material.dart';

class Drawerpage extends StatefulWidget {
  const Drawerpage({Key? key}) : super(key: key);

  @override
  State<Drawerpage> createState() => _DrawerpageState();
}

class _DrawerpageState extends State<Drawerpage> {
  late String selectedvalue;

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 100,
          width: 200,
          child: DrawerHeader(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Colors.green,
              ),
              Text("name"),
            ],
          )),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("Contacts"),
        ),
        ListTile(
          leading: Icon(Icons.bookmark),
          title: Text("saved msg"),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text("settings"),
        ),
        ListTile(
          leading: Icon(Icons.person_add),
          title: Text("Contacts"),
        ),
      ],
    );
  }
}
