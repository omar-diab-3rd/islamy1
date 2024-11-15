import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:islamy/commen/imagess.dart';

class Radioscreen extends StatelessWidget {
  const Radioscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 200,top: 100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(Imagess.radio),
           Text("إذاعة القرآن الكريم",
          style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 28)
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              
                Icon(Icons.skip_previous_outlined , color: Theme.of(context).colorScheme.primary,size: 30,),
                Icon(Icons.play_arrow,color: Theme.of(context).colorScheme.primary,size: 45,),
                Icon( Icons.skip_next_outlined,color: Theme.of(context).colorScheme.primary,size: 30,)
                 
              ],
            ),
          )
        ],
      ),
    );
  }
}