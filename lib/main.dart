import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:theme/controller/contact_cantrollerr.dart';
import 'package:theme/controller/counter_controller.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences preferences = await SharedPreferences.getInstance();
  int counter = preferences.getInt('counts') ?? 0;

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) =>
              CounterProvider(counts: counter, preferences: preferences),
        ),
        ChangeNotifierProvider(
          create: (context) => ContactProvider(),
        )
      ],
      child: const MyApp(),
    ),
  );
}
