import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration:const BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/bg3.png"),fit: BoxFit.cover)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: BottomNavigationBar(items:const [
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/quran.png"))       , label: "Quraan" ),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/book (1).png"))    , label: "Ahadeece"),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/sebha.png"))       , label: "Sebha" ),
           
          ]),
      ),
    );
  }
}