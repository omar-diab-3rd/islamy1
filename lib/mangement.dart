import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier
{
  bool get isdark => appthememode==ThemeMode.dark;
  ThemeMode appthememode = ThemeMode.dark;
  String localcode ="en";
  
   changeMode(ThemeMode mode) {
  appthememode=mode;
  notifyListeners();
  }
  changelocal(String local) {
  localcode=local;
  notifyListeners();
  }
   
}