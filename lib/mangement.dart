import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier
{
   changeMode(ThemeMode mode) {
  appthememode=mode;
  notifyListeners();
  }
  bool get isdark => appthememode==ThemeMode.dark;
  ThemeMode appthememode = ThemeMode.dark;
}