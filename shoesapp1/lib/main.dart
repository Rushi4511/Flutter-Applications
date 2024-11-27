import 'package:flutter/material.dart';
import 'package:shoesapp1/shoesscreen1.dart';
import 'package:shoesapp1/shoesscreen1_1.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CounterApp());
  }
}
