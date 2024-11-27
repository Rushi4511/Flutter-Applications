import 'package:flutter/material.dart';
import 'package:quizapp001/OnBoardScreen.dart';
import 'package:quizapp001/SignUpPage.dart';
import 'package:quizapp001/assignement3.dart';
import 'package:quizapp001/loginPage1.dart';
import 'package:quizapp001/LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
