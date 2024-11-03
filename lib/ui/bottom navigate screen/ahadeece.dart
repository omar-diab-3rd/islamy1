import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/commen/imagess.dart';
import 'package:islamy/screens/hadeecescreen.dart';

class AhadeeceScreen extends StatefulWidget {
  const AhadeeceScreen({super.key});

  @override
  State<AhadeeceScreen> createState() => _AhadeeceScreenState();
   
}

class _AhadeeceScreenState extends State<AhadeeceScreen> {
  List<HadeeceModel> hadeeceModelList=[];
  @override
  Widget build(BuildContext context) {
    if(hadeeceModelList.isEmpty  ){
      loadhadeece();

    }
    return Column( 
        children: [
          Image.asset(Imagess.hadeeceHeader),
     
           Expanded(child: ListView.separated(
            itemCount: hadeeceModelList.length,
            itemBuilder:(context,index) => Center(
              child: Expanded(
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=> 
                      hadeecescreen(
                        name: hadeeceModelList[index].name,
                        content: hadeeceModelList[index].content))
                    );
                  },
                  child: Text(
                    hadeeceModelList[index].name,
                    style: Theme.of(context).textTheme.titleSmall,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
               separatorBuilder: (context, index) {
                return const Divider();
               },
                )
               ),
             
        ],
      );
  }

  loadhadeece()async{
  List<HadeeceModel> _hadeeceModelList=[];

   String data= await rootBundle.loadString("assets/ahadeece/ahadeth.txt");
   List<String>hadeeceList=data.trim().split("#");
   hadeeceList.removeWhere((elemnt)=>elemnt.trim().isEmpty);
   for(var i=0;i<hadeeceList.length;i++)
   {
    int index =hadeeceList[i].trim().indexOf("\n");
    String name = hadeeceList[i].trim().substring(0,index);
    String content = hadeeceList[i].trim().substring(index);  
    print("name : $name");
    print("content :$content");
    _hadeeceModelList.add(HadeeceModel(name: name, content: content));
   }
   hadeeceModelList=_hadeeceModelList;
   setState(() {
     
   });
  }
}

class HadeeceModel{
  String name;
  String content; 
  HadeeceModel({required this.name,required this.content
  });
}