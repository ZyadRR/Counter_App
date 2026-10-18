import 'package:final_count_app/entity/counter.dart';
import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  Counter counter;
   CounterWidget({super.key , required this.counter});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
   late Counter stateCounter = widget.counter;
  @override
  Widget build(BuildContext context) {
   
    return  SizedBox(
      
        height: 80,
        
        
         child:Card( 
          color: stateCounter.colors,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

           children: [
            Text('${stateCounter.name}',style: TextStyle(color: Colors.white),),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){
                  setState(() {
                    stateCounter=stateCounter.copyWith(cnt: stateCounter.cnt-stateCounter.increment);
                  });
                }, icon: Icon(Icons.minimize)),
                
                Text('${stateCounter.cnt}', style: TextStyle(color: Colors.white),),
                  IconButton(onPressed: (){
                    setState(() {
                      stateCounter = stateCounter.copyWith(cnt: stateCounter.cnt+stateCounter.increment);
                    });
                  }, icon: Icon(Icons.add)),
                
              ],
             ),
           ],
         ),
         )
       );
    
  }
}