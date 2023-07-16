import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
          ListView.builder(
            itemCount: 6,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Icon(Icons.person),
                title: Text("name $index"),
                trailing: Text("Date $index"),
              );
            },

          )


      ),
    );
  }
}
