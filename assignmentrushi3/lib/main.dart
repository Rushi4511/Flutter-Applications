import 'package:flutter/material.dart';
import "Assignment3.dart";
import "assignment21.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: assignment21(),
    );
  }
}
