import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/commen/imagess.dart';
 

class Surascreen extends StatefulWidget {
  Surascreen({super.key , required this.name , required this.number});
  String name;
  int number;

  @override
  State<Surascreen> createState() => _SurascreenState();
}

class _SurascreenState extends State<Surascreen> {
  List<String>content=[];

  @override
  Widget build(BuildContext context) {
    if(content.isEmpty)loadsura(widget.number);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage( Theme.of(context).colorScheme.brightness==Brightness.light?
         Imagess.bg3
         :Imagess.DARKbg),fit: BoxFit.cover)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text("Islamy"),
          leading: IconButton(onPressed: (){Navigator.of(context).pop();}, 
          icon: const Icon(Icons.arrow_back),
          color: Theme.of(context).colorScheme.onSecondary),
          
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
              Text(widget.name ,
              style: Theme.of(context).textTheme.titleMedium
               ),
              Divider(    
                indent: MediaQuery.of(context).size.width*.1,
                endIndent: MediaQuery.of(context).size.width*.1,
                
              ),
              content.isEmpty ?
               Expanded(child: Center(child: CircularProgressIndicator(
                color: Theme.of(context).colorScheme.onSecondary ,
              )))
              :Expanded(child: ListView(
                children: [
                  RichText(
                    textDirection: TextDirection.rtl,
                    text: TextSpan( 
                    style: Theme.of(context).textTheme.titleSmall,
                    children: content.map(
                      (e) => TextSpan( children: [
                        TextSpan( text: e),
                        TextSpan( text: ("  (${content.indexOf(e)+1})   "))
                      ],
                      )
                      
                      ) .toList()
                    )
                    
                    )
                ],
                 ))
            ],
          ),
        ),
      )
    );
  }
  Future<void> loadsura(int index)async{
      rootBundle.loadString("assets/quraan/${index+1}.txt").then((Value){
      content=Value.split("\n").where((element) =>element.trim().isNotEmpty,).toList();
    setState(() {
      
    });
      },);
  

  }
}