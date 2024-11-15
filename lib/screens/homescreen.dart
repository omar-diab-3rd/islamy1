import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:islamy/commen/imagess.dart';
import 'package:islamy/ui/bottom%20navigate%20screen/ahadeece.dart';
import 'package:islamy/ui/bottom%20navigate%20screen/quraan.dart';
import 'package:islamy/ui/bottom%20navigate%20screen/radioscreen.dart';
import 'package:islamy/ui/bottom%20navigate%20screen/sebeha.dart';
import 'package:islamy/ui/bottom%20navigate%20screen/settingscreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
     SebehaScreen(),
    const Radioscreen(),
    const Settingscreen(),
  ];
     
  

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage( Theme.of(context).colorScheme.brightness==Brightness.light?
         Imagess.bg3
         :Imagess.DARKbg),fit: BoxFit.cover)
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text( AppLocalizations.of(context)!.islamy),
        ),
        bottomNavigationBar: BottomNavigationBar(
           currentIndex: index,
           onTap: (value) {
             index=value;
             setState(() {
               
             });
           },
          items: [
          BottomNavigationBarItem(icon: ImageIcon(AssetImage(Imagess.quraan))      ,  label: AppLocalizations.of(context)!.quraan ),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage(Imagess.bookIcon))    ,  label: AppLocalizations.of(context)!.ahadeece),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage(Imagess.sebehaIcon))  ,  label: AppLocalizations.of(context)!.sebha ),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage(Imagess.radioIcon))   ,  label: AppLocalizations.of(context)!.radio),
          BottomNavigationBarItem(icon: const Icon(Icons.settings)                 ,  label: AppLocalizations.of(context)!.settings),
          ]),

          body: screens[index],
      ),
    );
  }
}