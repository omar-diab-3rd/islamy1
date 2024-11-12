import 'package:flutter/material.dart';
import 'package:islamy/commen/appcolors.dart';
import 'package:islamy/mangement.dart';
import 'package:provider/provider.dart';

class Settingscreen extends StatefulWidget {
  const Settingscreen({super.key});

  @override
  State<Settingscreen> createState() => _SettingscreenState();
}

class _SettingscreenState extends State<Settingscreen> {
   

  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<ThemeProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        children: [
          SwitchListTile(
            title: Text(" ThemeMode ", style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 20),) , 
            trackColor:const WidgetStatePropertyAll(Colors.grey),
            thumbColor: WidgetStatePropertyAll(Theme.of(context).colorScheme.onSecondary),
            value: provider.isdark, 
            onChanged: (value)
            {
              provider.changeMode(value?ThemeMode.dark:ThemeMode.light);
            
            }),
        ListTile(
          title: Text( " Language ", 
          style: Theme.of(context).
          textTheme.
          titleMedium!.copyWith(fontSize: 20),),
          trailing: Container(
            padding:const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Appcolors.Lightmain),
              borderRadius: BorderRadius.circular(20)
            ),
            child: DropdownButton<String>(
              underline: Container(),
              value: "en",
              borderRadius: BorderRadius.circular(40),
              items: [
                 DropdownMenuItem(
                  value: "en",
                  child: Text("English",
                  style: Theme.of(context).
                  textTheme.
                  titleSmall,),
                  
                  ),
                  DropdownMenuItem(
                  value: "ar",
                  child: Text("عربي",
                  style: Theme.of(context).
                  textTheme.
                  titleSmall,),
                  ),
                   DropdownMenuItem(
                  value: "sp",
                  child: Text("Spanish",
                  style: Theme.of(context).
                  textTheme.
                  titleSmall,),
                  ),
                   DropdownMenuItem(
                  value: "Gr",
                  child: Text("German",
                  style: Theme.of(context).
                  textTheme.
                  titleSmall,),
                  ),
                   DropdownMenuItem(
                  value: "chi",      
                  child: Text("Chinese",
                  style: Theme.of(context).
                  textTheme.
                  titleSmall,),
                  ),
                   DropdownMenuItem(
                  value: "kr",
                  child: Text("Korean",
                  style: Theme.of(context).
                  textTheme.
                  titleSmall,),
                  ),
                   DropdownMenuItem(
                  value: "fr",
                  child: Text("french",
                  style: Theme.of(context).
                  textTheme.
                  titleSmall,),
                  ),
              ], onChanged: (value){}),
          ),
        )
        ],
      ),
    );
  }
}