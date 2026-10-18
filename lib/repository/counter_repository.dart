import 'package:final_count_app/entity/counter.dart';

abstract class CounterRepository {
void addcnt(Counter counter);
void rmcnt(Counter counter);
}