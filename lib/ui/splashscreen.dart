import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:islamy/ui/homescreen.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});
  static const String routname='splash';

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2),(){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Homescreen()));});
    return  Container(
      child: Image.asset("assets/images/splash.png"),
    );
  }
}