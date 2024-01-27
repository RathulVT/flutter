import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Controller/count_controller.dart';



class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Center(
        child: Text(Provider.of<countController>(context).count.toString()),

      ),
    );
  }
}
