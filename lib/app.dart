import 'package:flutter/material.dart';
import 'package:theme/pages/HomePage/home_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        appBarTheme: const AppBarTheme(
          color: Colors.blue,
        ),
      ),
      darkTheme: ThemeData.dark(
        useMaterial3: true,
      ).copyWith(
        appBarTheme: const AppBarTheme(
          color: Colors.red,
        ),
      ),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      home: const HomePage(),
    );
  }
}
