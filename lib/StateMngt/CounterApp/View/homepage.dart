import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/StateMngt/CounterApp/Controller/count_controller.dart';

class HomepageMVC extends StatefulWidget {
  const HomepageMVC({super.key});

  @override
  State<HomepageMVC> createState() => _HomepageMVCState();
}

class _HomepageMVCState extends State<HomepageMVC> {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<countController>(context, listen: false);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
        },
        child: const Icon(Icons.add),
      ),
      body: Center(child: Consumer<countController>(
        builder: (context, value, child) {
          return Text(controller.count.toString());
        },
      )),
    );
  }
}
