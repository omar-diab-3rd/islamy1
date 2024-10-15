import 'package:flutter/material.dart';
import 'package:islamy/commen/appcolors.dart';

class Apptheme {
  static ThemeData lightTheme = ThemeData(
    dividerTheme: DividerThemeData(
      color: Appcolors.Lightmain
    ),
    colorScheme: ColorScheme(
      brightness: Brightness.light, 
      primary: Appcolors.Lightmain, 
      onPrimary: Colors.white,
       secondary: Colors.white, 
       onSecondary: Colors.white, 
       error: Colors.red,
      onError: Colors.white, 
      surface: Colors.white, 
      onSurface: Colors.white
      ),
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: Appcolors.Lightmain,
    canvasColor: Appcolors.Lightmain,
    textTheme: const TextTheme(
      titleMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      )
    ),
    appBarTheme:const AppBarTheme(
      titleTextStyle: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
      color: Colors.transparent,
      centerTitle: true,
      elevation: 0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.shifting,
      backgroundColor: Appcolors.Lightmain,
      selectedItemColor: Appcolors.bottomlight,
      unselectedItemColor: Colors.white,
    )
  );




  static ThemeData darkTheme = ThemeData(
    dividerTheme: DividerThemeData(
      color: Appcolors.bottomdark
    ),
     colorScheme: ColorScheme(
      brightness: Brightness.dark, 
      primary: Appcolors.darkmain, 
      onPrimary: Appcolors.darkmain,
       secondary: Colors.white, 
       onSecondary: Colors.white, 
       error: Colors.red,
      onError: Colors.white, 
      surface: Colors.white, 
      onSurface: Colors.white
      ),
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: Appcolors.darkmain,
     canvasColor: Appcolors.darkmain,
      textTheme: const TextTheme(
      titleMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      )
    ),
    appBarTheme:const AppBarTheme(
      titleTextStyle: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
         
      ),
      color: Colors.transparent,
      centerTitle: true,
      elevation: 0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.shifting,
      backgroundColor: Appcolors.darkmain,
      selectedItemColor: Appcolors.bottomdark,
      unselectedItemColor: Colors.grey,
    )
    

  );
}