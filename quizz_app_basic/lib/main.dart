import 'package:flutter/material.dart';

import 'quizAppModelClass2.dart';
import "music.dart";

void main() => runApp(const MyQuizApp());

class MyQuizApp extends StatelessWidget {
  const MyQuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MusicApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}
