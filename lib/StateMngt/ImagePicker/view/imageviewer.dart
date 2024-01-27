import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/StateMngt/ImagePicker/Controller/image_Controller.dart';

class ImageViewer extends StatelessWidget {
  const ImageViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<imagepickerController>(
              builder: (context, value, child) {
                return Image(image: FileImage(value.image!));
              },
            ),
            IconButton(
              onPressed: (() {
                Navigator.pop(context);
              }),
              icon: const Icon(Icons.arrow_back),
            )
          ],
        ),
      ),
    );
  }
}
