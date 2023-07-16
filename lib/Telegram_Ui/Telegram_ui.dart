import 'package:flutter/material.dart';
import 'package:untitled/Telegram_Ui/drawerpage.dart';
import 'package:untitled/Telegram_Ui/chats.dart';

class TelegramUi extends StatefulWidget {
  const TelegramUi({Key? key}) : super(key: key);

  @override
  State<TelegramUi> createState() => _TelegramUiState();
}

class _TelegramUiState extends State<TelegramUi> with TickerProviderStateMixin{
  late TabController tabController;

  @override
  void initState(){
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Column(
          children: [
            TabBar(tabs:[
              TextButton(onPressed: (){}, child: const Text("Chats")),
              TextButton(onPressed: (){}, child: const Text("Groups")),
            ],controller: TabController(length: 2, vsync: this ),),
          ],
        ),
        backgroundColor: Colors.black26,centerTitle: true,
      ),
        drawer: const DrawerPage(),
      // Drawer(
      //   width: 200,
      //   child: ListView(
      //     children: const [
      //       SizedBox(
      //         height: 100,
      //         child: DrawerHeader(
      //             child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             CircleAvatar(
      //               backgroundColor: Colors.green,
      //             ),
      //             Text("name"),
      //           ],
      //         )),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.person),
      //         title: Text("Contacts"),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.bookmark),
      //         title: Text("saved msg"),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.settings),
      //         title: Text("settings"),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.person_add),
      //         title: Text("Contacts"),
      //       ),
      //     ],
      //   ),
      // ),
      body: TabBarView(
        controller: tabController,
        children: const [
        Tab(
          child: Chats(),
        ),
      ],

      ),
    );
  }
}
