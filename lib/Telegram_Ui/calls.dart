import 'package:flutter/material.dart';

class Callspage extends StatefulWidget {
  const Callspage({Key? key}) : super(key: key);

  @override
  State<Callspage> createState() => _CallspageState();
}

class _CallspageState extends State<Callspage> {
  var Currentindex = 0;

  List<Widget> l=[Page1(),Page2()];

  late PageController pgs;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pgs= PageController(initialPage: Currentindex);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: //l[Currentindex],
      PageView(
        controller: pgs,
        children: [
          Page1(),
          Page2(),
        ],



      ),


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: Currentindex,


        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
        ],
        onTap: (index) {
          setState(() {
             Currentindex = index;
             pgs.jumpToPage(index);
          });
        },
      ),
    );
  }
}

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Hello"),
      ),
    );
  }
}

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("World"),
      ),
    );
  }
}
