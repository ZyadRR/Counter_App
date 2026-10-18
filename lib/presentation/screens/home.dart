import 'package:final_count_app/data/source.dart';
import 'package:final_count_app/entity/counter.dart';
import 'package:final_count_app/presentation/screens/add_cnt_screen.dart';
import 'package:final_count_app/presentation/widgets/counter_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          children: [
           IconButton(onPressed: (){}, icon: Icon(Icons.menu ,color: Colors.white,)),
           Text('Count App' , style: TextStyle(color: Colors.white),)
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: 
            List.generate(DataSrc.counters.length, (index)=>CounterWidget(counter: DataSrc.counters[index])
            )
          
        ),
      ) ,
     floatingActionButton: FloatingActionButton(onPressed: (){
      
      Navigator.push(context, MaterialPageRoute(builder: (context)=>AddCntScreen()));
      
     } ,child: Icon(Icons.add),),
      
    );
  }
}