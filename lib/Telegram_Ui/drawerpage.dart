import 'package:flutter/material.dart';
import 'package:untitled/Telegram_Ui/Telegram_ui.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: Drawer(
        width: 200,
        child: ListView(
          children: const [
            SizedBox(
              height: 100,
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
        ),
      ),
    );
  }
}
