import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Mygeolocator extends StatefulWidget {
  const Mygeolocator({Key? key}) : super(key: key);

  @override
  State<Mygeolocator> createState() => _MygeolocatorState();
}

class _MygeolocatorState extends State<Mygeolocator> {

  getlocation()async{
   final locat = await Geolocator.getCurrentPosition();
   print(locat);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(onPressed: (){
                getlocation();
              }, child: Text("Locate"))
            ],
          ),
        ),
      ),
    );
  }
}
