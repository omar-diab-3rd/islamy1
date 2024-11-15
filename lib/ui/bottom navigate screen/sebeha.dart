import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:islamy/commen/appcolors.dart';
import 'package:islamy/commen/imagess.dart';

class SebehaScreen extends StatefulWidget {
  SebehaScreen({super.key});

  @override
  State<SebehaScreen> createState() => _SebehaScreenState();
}

class _SebehaScreenState extends State<SebehaScreen> {
  List<String>s=["استغفر الله","سبحان الله","الحمد لله","الله اكبر", ];

  int count=0;
  int x=0;
  double a=0;  
  late String tasbeh=s[x];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 200),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
         
        children: [
          Container(width: double.infinity,),
          Stack(
            children: [
            Padding(
              padding: const EdgeInsets.only(left: 90),
              child: Image(image: AssetImage(Theme.of(context).colorScheme.brightness==Brightness.dark?
                      Imagess.headSebhadark:
                      Imagess.headSebhaLight
                      ),
                      ),
            ),
           
          Padding(
            padding: const EdgeInsets.only(top: 72),
            child: GestureDetector(
              onTap: click,
              child: Transform.rotate(
                angle: a,
                child: Image(image: AssetImage( Imagess.bodySebhadark
                ),
                color:Theme.of(context).colorScheme.brightness==Brightness.dark? 
                null:
                Appcolors.Lightmain
                ),
              ),
            ),
          ),
            ],
          ),
          
          Text("عدد التسبيحات",
          style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 30),),
          Container(
            width: 60,
            height: 70,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onPrimary,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Center(
              child: Text("$count",
              style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ),
          ElevatedButton(
            style:ElevatedButton.styleFrom(
            backgroundColor:  Theme.of(context).colorScheme.primary,
            maximumSize: const Size(200, 50),
            minimumSize: const Size(200, 50)
             ),
            onPressed: click,
            child:Text( tasbeh,
            style: Theme.of(context).textTheme.titleLarge,
          
            ) ,)
        ],
      ),
    );
  }
  void click(){   
     
    if(count<33){
      count++;
      }
    else{
      count=0;
      x++;
      if(x==s.length)
      x=0;
    }
    a+=15;
    tasbeh=s[x] ;
   setState(() {
     });
  }
}