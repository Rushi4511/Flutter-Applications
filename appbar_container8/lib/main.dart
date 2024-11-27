import 'package:appbar_container8/appbar1.dart';
import 'package:appbar_container8/appbar2.dart';
import 'package:appbar_container8/appbar3.dart';
import 'package:appbar_container8/appbar4.dart';
import 'package:appbar_container8/appbar5.dart';
import 'package:appbar_container8/appbar6.dart';
import 'package:appbar_container8/appbar7.dart';
import 'package:appbar_container8/appbar8.dart';
import 'package:appbar_container8/appbar9.dart';
import 'package:appbar_container8/appbar10.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Appbar10(),
      debugShowCheckedModeBanner: false,
    );
  }
}
