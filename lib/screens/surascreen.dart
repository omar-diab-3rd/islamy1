import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/commen/imagess.dart';
import 'package:islamy/ui/bottom%20navigate%20screen/quraan.dart';

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
        image: DecorationImage(image: AssetImage( Imagess.bg3),fit: BoxFit.cover)
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
              Text(widget.name ,
              style: Theme.of(context).textTheme.titleMedium
               ),
              Divider(    
                indent: MediaQuery.of(context).size.width*.1,
                endIndent: MediaQuery.of(context).size.width*.1,
                
              ),
              content.isEmpty ?
              const Expanded(child: Center(child: CircularProgressIndicator()))
              :Expanded(child: ListView.builder(
                itemBuilder:(context,index)=> Text(content[index],
                
                style: Theme.of(context).textTheme.titleSmall,
                textAlign: TextAlign.center,),
                itemCount: content.length,))
            ],
          ),
        ),
      )
    );
  }

  Future<void> loadsura(int index)async{
      rootBundle.loadString("assets/quraan/${index+1}.txt").then((Value){
      content=Value.split("\n");
      Future.delayed(const Duration(seconds: 200));  
    setState(() {
      
    });
      },);
  

  }
}