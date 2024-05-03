import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:theme/modals/counter_modal.dart';

class CounterProvider extends ChangeNotifier {
  CounterProvider({required int counts, required this.preferences}) {
    Counter.instance.coun = counts;
  }
  late SharedPreferences preferences;
  Future<void> increment() async {
    Counter.instance.coun++;
    await preferences.setInt('counts', Counter.instance.coun);

    notifyListeners();
  }

  Future<void> decremrnt() async {
    Counter.instance.coun--;
    await preferences.setInt('counts', Counter.instance.coun);
    notifyListeners();
  }

  Future<void> reset() async {
    Counter.instance.coun = 0;
    await preferences.setInt('counts', Counter.instance.coun);
    notifyListeners();
  }

  int get getCuont => Counter.instance.coun;
}
