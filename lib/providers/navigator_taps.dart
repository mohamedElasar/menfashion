import 'package:flutter/foundation.dart';

class Navigation with ChangeNotifier{
 var _selectedpage = 0;

 int get selectedpage {
   return _selectedpage;
 }


 void changeindex (int i){
   _selectedpage = i;
   notifyListeners();
 }
}