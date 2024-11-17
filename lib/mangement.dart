import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider with ChangeNotifier
{
  bool get isdark => appthememode==ThemeMode.dark;
  ThemeMode appthememode = ThemeMode.light;
  String localcode ="en";
  ThemeProvider(){
    getTheme();
    getlang();
  }
  
   changeMode(ThemeMode mode) {
  appthememode=mode;
  savemode(mode);
  notifyListeners();
  }
  changelocal(String local) {
  localcode=local;
  savelang(localcode);
  notifyListeners();
  }

  void savemode(ThemeMode theme)async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if(ThemeMode == ThemeMode.light){
    prefs.setString("theme", "light");
    }
    else
     prefs.setString("theme", "dark");
      
  }
  void getTheme()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String c =prefs.getString("theme")?? "light";

    if(c=="light"){
      appthememode==ThemeMode.light;
    }
    else{
    appthememode=ThemeMode.dark;
    }
    notifyListeners();
  }

  void savelang( String language)async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if(language == "en"){
    prefs.setString("lang", "en");
    }
    else if(language =="es"){
    prefs.setString("lang", "es");
    }
     else if(language =="ar"){
    prefs.setString("lang", "ar");
    }
     else if(language =="de"){
    prefs.setString("lang", "de");
    }
     else if(language =="zh"){
    prefs.setString("lang", "zh");
    }
     else if(language =="ko"){
    prefs.setString("lang", "ko");
    }
     else if(language =="fr"){
    prefs.setString("lang", "fr");
    }

  }
  void getlang()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String lang =prefs.getString("lang")??"en";
    if(lang=="ar")
    {
      localcode ="ar";
    }
    else if(lang =="es")
    {
      localcode ="es";
    }
    else if(lang =="fr")
    {
      localcode ="fr";
    }
    else if(lang =="ko")
    {
      localcode ="ko";
    }
    else if(lang =="du")
    {
      localcode ="du";
    }
    else if(lang =="zh")
    {
      localcode ="zh";
    }
    else{
      localcode ="en";
    }
    notifyListeners();
  }
   
}