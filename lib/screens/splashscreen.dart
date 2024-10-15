import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:islamy/commen/imagess.dart';
import 'package:islamy/screens/homescreen.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});
  static const String routname='splash';

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Homescreen()));});
    return  Container(
      child: Image.asset( Imagess.splashscreen),
    );
  }
}