import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/commen/imagess.dart';
import 'package:islamy/screens/surascreen.dart';

class QuraanScreen extends StatefulWidget {
   QuraanScreen({super.key});

  @override
  State<QuraanScreen> createState() => _QuraanScreenState();
}

class _QuraanScreenState extends State<QuraanScreen> {
   List<String>suras=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
            ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
            ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
            ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
            ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
            ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
            ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
            ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
            ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
            "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];

   List<int>num=[];

  @override
  Widget build(BuildContext context) {
    if (num.isEmpty)  loadnumber();
    return  Stack(
      children: [ 
        Column( 
        children: [
          Image.asset(Imagess.quraanHeader),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
               Expanded(
                child: Text(" virses Number",
                style: Theme.of(context).textTheme.titleMedium
                !.copyWith(fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,),
      
              ),
              Expanded(
                child: Text("Sura Name",
                style: Theme.of(context).textTheme.titleMedium
                !.copyWith(fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
                ),
              ),
               
            ],
          ),
          const Divider(),
         num.isEmpty
          ? const Expanded(
            child:Center(
              child: CircularProgressIndicator(),
            ) )
          : Expanded(child: ListView.separated(
            itemCount:suras.length ,
            itemBuilder:(context,index) => Center(
              child: InkWell(
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=> 
                    Surascreen(name: suras[index], number: index,))
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Text(
                        num [index].toString(),
                        style: Theme.of(context).textTheme.titleSmall,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Expanded(
                      child: Text(
                         suras[index],
                         style: Theme.of(context).textTheme.titleMedium,
                         textAlign: TextAlign.center,
                         ),
                    ),
                     
                  ],
                ),
              ),
            ),
               separatorBuilder: (context, index) {
                return const Divider();
               },
                )
               ),
             
        ],
      ),
        Align(alignment: Alignment.center,
       child: VerticalDivider(
        indent: MediaQuery.of(context).size.height *.26,
       ),
       
       )
      
      ]
    );
  }

  loadnumber()async{
    List<int>_num=[];
    for(var i=0;i<suras.length;i++){
      String n = await rootBundle.loadString("assets/quraan/${i+1}.txt");
      List<String>count=n. trim().split("\n");
      count.removeWhere((element)=>element.isEmpty
      );
      _num.add(count.length);
    }
    num = _num;
    
    setState(() {
      
    });
  
  }
}