import 'package:flutter/material.dart';

class gmailpagehome extends StatefulWidget {
  const gmailpagehome({Key? key}) : super(key: key);

  @override
  State<gmailpagehome> createState() => _gmailpagehomeState();
}

class _gmailpagehomeState extends State<gmailpagehome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.grey[400],
        child: ListView(
          children: const [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: DrawerHeader(
                    child: Text("GMAIL"),
                  ),
                  height: 50,
                ),
                Divider(
                  color: Colors.black26,
                ),
                SizedBox(
                  child: ListTile(
                    leading: Icon(Icons.photo_library_sharp),
                    title: Text("ALL Inboxes"),
                  ),
                  height: 50,
                ),
                Divider(
                  color: Colors.black26,
                ),
                ListTile(
                  leading: Icon(Icons.ad_units),
                  title: Text("Primary"),
                ),
                ListTile(
                  leading: Icon(Icons.tag_sharp),
                  title: Text("Promotions"),
                ),
                ListTile(
                  leading: Icon(Icons.person_add_alt),
                  title: Text("Social"),
                ),
              ],
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        actions:  const [
          Padding(
           padding: EdgeInsets.all(8.0),
           child: CircleAvatar(
             child: Text("R"),
           ),
          ),
       ],
      ),
    );
  }
}
