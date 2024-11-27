import 'splash_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MainApp());+
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: const Color.fromRGBO(255, 255, 255, 1)),
        home: const Home());
  }
}
