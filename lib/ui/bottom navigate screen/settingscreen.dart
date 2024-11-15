import 'package:flutter/material.dart';
import 'package:islamy/commen/appcolors.dart';
import 'package:islamy/mangement.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
            title: Text(AppLocalizations.of(context)!.thememode, style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 20),) , 
            trackColor:const WidgetStatePropertyAll(Colors.grey),
            thumbColor: WidgetStatePropertyAll(Theme.of(context).colorScheme.onSecondary),
            value: provider.isdark, 
            onChanged: (value)
            {
              provider.changeMode(value?ThemeMode.dark:ThemeMode.light);
            
            }),
        ListTile(
          title: Text( AppLocalizations.of(context)!.language, 
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
              value: provider.localcode,
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
                  value: "es",
                  child: Text("Spanish",
                  style: Theme.of(context).
                  textTheme.
                  titleSmall,),
                  ),
                   DropdownMenuItem(
                  value: "de",
                  child: Text("German",
                  style: Theme.of(context).
                  textTheme.
                  titleSmall,),
                  ),
                   DropdownMenuItem(
                  value: "zh",      
                  child: Text("Chinese",
                  style: Theme.of(context).
                  textTheme.
                  titleSmall,),
                  ),
                   DropdownMenuItem(
                  value: "ko",
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
              ], onChanged: (value){
               if(value!=null) {
                provider. changelocal(value);
                }
              }),
          ),
        )
        ],
      ),
    );
  }
}