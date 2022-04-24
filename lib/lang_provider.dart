import 'package:flutter/cupertino.dart';

class LongProvider extends ChangeNotifier{

  bool _isItemSelected = false;

  void isItemSelected(value){
    _isItemSelected = value;
    notifyListeners();
  }

  bool getItemSelected(){
    return _isItemSelected;
  }

  void langChanged(){
    notifyListeners();
  }


}