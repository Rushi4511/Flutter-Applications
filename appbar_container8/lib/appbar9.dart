import 'package:flutter/material.dart';

class Appbar9 extends StatelessWidget {
  const Appbar9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Problem 8"),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.red,
                width: 10,
              ),
              color: Colors.amber,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          height: 300,
          width: 300,
        ),
      ),
);
}
}