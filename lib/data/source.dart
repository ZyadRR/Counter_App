import 'package:final_count_app/entity/counter.dart';
import 'package:final_count_app/repository/counter_repository.dart';

class DataSrc extends CounterRepository{
 static List<Counter>counters=[

 ];

 @override
 void addcnt(Counter counter){
  counters.add(counter);
 }

 @override
 void rmcnt(Counter counter){
  counters.remove(counter);
 }

}