import 'package:flutter/material.dart';
import 'package:untitled/Telegram_Ui/chats.dart';
import 'calls.dart';
import 'drawerpage.dart';

class TelegramUi extends StatefulWidget {
  const TelegramUi({Key? key}) : super(key: key);

  @override
  State<TelegramUi> createState() => _TelegramUiState();
}

class _TelegramUiState extends State<TelegramUi> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.search)),
      ],
        flexibleSpace: Column(
          children: [
            TabBar(
              tabs: [
                TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Chats(),));
                }, child: const Text("Chats")),
                TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Callspage(),));
                }, child: const Text("Calls")),
              ],
              controller: TabController(length: 2, vsync: this),
            ),
          ],
        ),
        backgroundColor: Colors.black26,
        centerTitle: true,
      ),
      drawer: Drawer(
        width: 200,
        child: ListView(children: const [
          Drawerpage(),
        ]),
      ),


      body: TabBarView(
        controller: tabController,
        children: const [

            Chats(),
            Callspage(),





        ],
      ),
    );
  }
}
