import 'package:flutter/cupertino.dart';

class countController extends ChangeNotifier{
  int count = 0;
  increment(){
    count++;
    notifyListeners();

  }

}