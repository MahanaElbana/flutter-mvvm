import 'package:flutter/material.dart';
import 'package:flutter_mvvm/view/counter_view.dart';
    // --- main.dart --- //
void main() => runApp(MVVMApp());

class MVVMApp extends StatelessWidget {
  const MVVMApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterView(),
    );
  }
}                                        // 1 //
