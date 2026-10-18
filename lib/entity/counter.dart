import 'package:flutter/material.dart';

class Counter {
   int cnt;
  final String name;
  final int increment;
  final Color colors;
  Counter({required this.cnt ,required this.increment,required this.name,required this.colors});
Counter copyWith({String? name , int?cnt, int?increment,Color?colors}){
  return Counter(cnt: cnt??this.cnt, increment: increment??this.increment, name: name??this.name,colors: colors??this.colors);
}
}