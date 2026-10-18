import 'package:final_count_app/presentation/screens/home.dart';
import 'package:final_count_app/presentation/widgets/counter_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home() ,
    );
  }
}

