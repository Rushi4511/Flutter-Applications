import 'package:flutter/material.dart';
import 'package:stack_widget_01/StackWidget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StackWidget()
    );
  }
}
