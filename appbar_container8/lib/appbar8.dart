import 'package:flutter/material.dart';

class Appbar8 extends StatelessWidget {
  const Appbar8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Problem 8"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        color: Colors.red,
        child: Container(
          height: 300,
          width: 300,
          color: Colors.blue,
        ),
      ),
    );
  }
}
