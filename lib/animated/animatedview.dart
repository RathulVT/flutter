import 'package:flutter/material.dart';

class Animatedview extends StatefulWidget {
  const Animatedview({super.key});

  @override
  State<Animatedview> createState() => _AnimatedviewState();
}

class _AnimatedviewState extends State<Animatedview> {
  bool animated = false;

  animateview() {
    animated = !animated;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          animateview();
        },
        child: Stack(
          children: [
            AnimatedPositioned(
                top: animated ? 10 : 40,
                left: animated ? 10 : 20,
                duration: const Duration(seconds: 3),
                child: AnimatedOpacity(
                  duration: const Duration(seconds: 2),
                  opacity: animated ? 0.1 : 1,
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.blue,
                  ),
                )),
            AnimatedPositioned(
                top: animated ? 200 : 80,
                left: animated ? 100 : 50,
                duration: const Duration(seconds: 3),
                child: AnimatedOpacity(
                  opacity: animated ? 0.1 : 1,
                  duration: const Duration(seconds: 2),
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.red,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
