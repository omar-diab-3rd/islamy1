import 'package:flutter/material.dart';
import 'package:islamy/commen/apptheme.dart';
import 'package:islamy/mangement.dart';
import 'package:islamy/screens/splashscreen.dart';
import 'package:provider/provider.dart';

void main() {
   
  runApp( 
     ChangeNotifierProvider(
      create: (_)=> ThemeProvider(),
      child: Myapp(),
  )
  );

 
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
    debugShowCheckedModeBanner: false,
    themeMode: Provider.of<ThemeProvider>(context).appthememode,
    theme: Apptheme.lightTheme,
    darkTheme: Apptheme.darkTheme,
    home: Splashscreen(),
  );
  }
}
