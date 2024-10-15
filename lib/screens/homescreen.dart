import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:islamy/commen/imagess.dart';
import 'package:islamy/ui/bottom%20navigate%20screen/ahadeece.dart';
import 'package:islamy/ui/bottom%20navigate%20screen/quraan.dart';
import 'package:islamy/ui/bottom%20navigate%20screen/radioscreen.dart';
import 'package:islamy/ui/bottom%20navigate%20screen/sebeha.dart';
import 'package:islamy/ui/bottom%20navigate%20screen/settingscreen.dart';

class Homescreen extends StatefulWidget {
   Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int index= 0;
  List<Widget>screens=[
    QuraanScreen(),
    const AhadeeceScreen(),
    const SebehaScreen(),
    const Radioscreen(),
    const Settingscreen(),
  ];
     
  

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage( Imagess.bg3),fit: BoxFit.cover)
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Islamy"),
        ),
        bottomNavigationBar: BottomNavigationBar(
           currentIndex: index,
           onTap: (value) {
             index=value;
             setState(() {
               
             });
           },
          items: [
          BottomNavigationBarItem(icon: ImageIcon(AssetImage(Imagess.quraan))      ,  label: "Quraan" ),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage(Imagess.bookIcon))    ,  label: "Ahadeece"),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage(Imagess.sebehaIcon))  ,  label: "Sebha" ),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage(Imagess.radioIcon))   ,  label: "Radio"),
          const BottomNavigationBarItem(icon:  Icon(Icons.settings)                ,  label: "Settings" ),
          ]),

          body: screens[index],
      ),
    );
  }
}