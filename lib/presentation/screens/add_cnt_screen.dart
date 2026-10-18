import 'package:final_count_app/data/source.dart';
import 'package:final_count_app/entity/counter.dart';
import 'package:final_count_app/presentation/screens/home.dart';
import 'package:flutter/material.dart';

class AddCntScreen extends StatefulWidget {
  new({super.key});

  @override
  State<AddCntScreen> createState() => _AddCntScreenState();
}

class _AddCntScreenState extends State<AddCntScreen> {
  String currentcolor = 'blue';
  final TextEditingController namecontrol = TextEditingController();

  final TextEditingController incrementcontrol = TextEditingController();

  final TextEditingController cntcontrol = TextEditingController();
  Color getColor(){
    switch(currentcolor){
      case 'red':
      return Colors.red;
          case 'yellow':
      return Colors.yellow;
          case 'green':
      return Colors.green;
          case 'black':
      return Colors.black;
          case 'orange':
      return Colors.orange;
             case 'blue':
      return Colors.blue;
      
      default:
      return Colors.blue;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(
          child: TextField(
            controller: namecontrol,
            decoration: InputDecoration(hintText: 'Counter name.....'),
          ),
        ),
      ),
      body: Column(
        children: [
          TextField(
            controller: incrementcontrol,
            decoration: InputDecoration(hintText: 'Increment amount....'),
          ),
          TextField(
            controller: cntcontrol,
            decoration: InputDecoration(hintText: 'Initial value....'),
          ),
          DropdownButton<String>(
            value: currentcolor,
            items: [DropdownMenuItem(value:'red', child: Text('red')),
            DropdownMenuItem(value: 'yellow', child: Text('yellow')),
            DropdownMenuItem(value: 'orange', child: Text('orange')),
            DropdownMenuItem(value: 'black', child: Text('black')),
            DropdownMenuItem(value: 'green', child: Text('green')),
             DropdownMenuItem(value: 'blue', child: Text('blue')),],
            onChanged: (String?color){
                setState(() {
                  currentcolor=color!;
                });
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          DataSrc.counters.add(
            Counter(
              cnt: int.parse(cntcontrol.text),
              increment: int.parse(incrementcontrol.text),
              name: namecontrol.text,
              colors: getColor()
            ),
          );
          Navigator.pop(context);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => Home()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
