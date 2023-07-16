import 'package:flutter/material.dart';

class Tabbarpages extends StatefulWidget {
  const Tabbarpages({Key? key}) : super(key: key);

  @override
  State<Tabbarpages> createState() => _TabbarpagesState();
}

class _TabbarpagesState extends State<Tabbarpages> {
  @override
  Widget build(BuildContext context) {
    return TabBarView(children: [
      Column(
        children: [
          ListTile(leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(300),
                color: Colors.blueGrey,
              ),
            ),
          ),
            title: Text("Name"),

          )
        ],
      )

    ]);
  }
}
