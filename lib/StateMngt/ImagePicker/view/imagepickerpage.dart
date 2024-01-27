import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/StateMngt/ImagePicker/Controller/image_Controller.dart';
import 'package:untitled/StateMngt/ImagePicker/view/imageviewer.dart';

class Imagepicker extends StatefulWidget {
  const Imagepicker({super.key});

  @override
  State<Imagepicker> createState() => _ImagepickerState();
}

class _ImagepickerState extends State<Imagepicker> {
  @override
  Widget build(BuildContext context) {
    final controller =
        Provider.of<imagepickerController>(context, listen: false);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ImageViewer(),
                    ));
              },
              child: const Text('show Image'),
            ),
            TextButton(
                onPressed: () {
                  controller.Pickimage();
                },
                child: const Text('pick image'))
          ],
        ),
      ),
    );
  }
}
