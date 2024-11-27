import 'package:flutter/material.dart';
import "lecture65_2.dart";

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Lecture65_2());
  }
}
