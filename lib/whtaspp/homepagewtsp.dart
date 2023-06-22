import 'package:flutter/material.dart';

import 'tabbarpages.dart';

class Homepagewtsp extends StatefulWidget {
  const Homepagewtsp({Key? key}) : super(key: key);

  @override
  State<Homepagewtsp> createState() => _HomepagewtspState();
}

class _HomepagewtspState extends State<Homepagewtsp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("WhatsApp"),
            backgroundColor: Colors.green[700],
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.camera_alt_outlined),
                  tooltip: "search"),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                  tooltip: "search"),
              PopupMenuButton(
                itemBuilder: (BuildContext ctx) {
                  return const [
                    PopupMenuItem(child: Text("New group")),
                    PopupMenuItem(child: Text("New broadcast")),
                    PopupMenuItem(child: Text("Linked devices")),
                  ];
                },
              )
            ],
            bottom: const TabBar(tabs: [
              Tab(
                icon: Icon(Icons.group),
              ),
              Tab(
                child: Text("chats"),
              ),
              Tab(
                child: Text("Status"),
              ),
              Tab(
                child: Text("calls"),
              ),
            ]),
          ),
          body: Container(
            child: Tabbarpages(),
          ),
        ));
  }
}
