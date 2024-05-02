import 'package:flutter/material.dart';
import 'package:theme/modals/counter_modal.dart';

class CounterProvider extends ChangeNotifier {
  CounterProvider() {
    // Counter.instance.coun=count;
  }
  void increment() {
    Counter.instance.count++;
    notifyListeners();
  }

  void decremrnt() {
    Counter.instance.count--;
    notifyListeners();
  }

  void reset() {
    Counter.instance.count = 0;
    notifyListeners();
  }

  int get getCuont => Counter.instance.count;
}
