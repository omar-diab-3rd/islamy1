import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:islamy/commen/imagess.dart';
import 'package:islamy/ui/bottom%20navigate%20screen/ahadeece.dart';

class hadeecescreen extends StatelessWidget {
  hadeecescreen({super.key,required this.name,required this.content});
  String name;
  String content;

   @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage( Theme.of(context).colorScheme.brightness==Brightness.light?
         Imagess.bg3
         :Imagess.DARKbg)
         ,fit: BoxFit.cover)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text("Islamy"),
          leading: IconButton(onPressed: (){Navigator.of(context).pop();}, 
          icon: const Icon(Icons.arrow_back),
          color: const Color.fromARGB(255, 168, 65, 27),),
          
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
                
              ), 
              
               Expanded(
                 child: SingleChildScrollView(
                   child: Text( 
                    content, 
                    style: Theme.of(context).textTheme.titleSmall,
                    textAlign: TextAlign.center,),
                 ),
               ),
                
            ],
          ),
        ),
      )
    );
  }
  }
