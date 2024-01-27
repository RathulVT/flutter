import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled/StateMngt/ImagePicker/view/imagepickerpage.dart';

class imagepickerController extends ChangeNotifier{
  File? image;

  Pickimage()async{
    var img =await ImagePicker().pickImage(source: ImageSource.gallery);
    image = File(img!.path);
    notifyListeners();

  }


}