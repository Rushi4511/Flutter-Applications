import 'package:flutter/material.dart';

class Appbar10 extends StatelessWidget {
  const Appbar10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text("Problem 10"),
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.red,
                width: 10,
              ),
              color: Colors.amber,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
            ),
            height: 300,
            width: 300,
          ),
 ));
}
}