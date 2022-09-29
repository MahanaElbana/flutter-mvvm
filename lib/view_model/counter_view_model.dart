
import 'package:flutter_mvvm/model/counter_model.dart';

// counter_view_model.dart //
class CounterViewModel{

  String title = 'counter as MVVM' ; // counter title static data
   CounterModel counterModel = CounterModel(); // instance of counter model 

  int get getCount =>  
    // ''' 
    // return count as state 
    // '''
    counterModel.count;
  
  increment(){
    // ''' 
    // increment state 
    // '''
    counterModel.count++;
  }

  decrement(){
    // ''' 
    // decrement state 
    // '''
     counterModel.count--;
  }
}                       // 3 //