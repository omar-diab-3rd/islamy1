import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:islamy/commen/imagess.dart';

class Surascreen extends StatelessWidget {
  Surascreen({super.key , required this.name , required this.number});
  String name;
  int number;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage( Imagess.bg3),fit: BoxFit.cover)
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Islamy"),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(
             horizontal: MediaQuery.of(context).size.width*.06,
            vertical:  MediaQuery.of(context).size.height*.02

          ),
          margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width*.06,
            vertical:  MediaQuery.of(context).size.height*.1
            ),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onPrimary.withOpacity(.7),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Text(name ,
              style: Theme.of(context).textTheme.titleMedium
               ),
              Divider(
                 
                indent: MediaQuery.of(context).size.width*.1,
                endIndent: MediaQuery.of(context).size.width*.1,
                
              )
            ],
          ),
        ),
      )
    );
  }
}