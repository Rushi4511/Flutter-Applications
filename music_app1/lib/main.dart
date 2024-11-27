import 'package:flutter/material.dart';
import "package:music_app1/view/home.dart";

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      
      home: HomePage(),
    );
  }
}
