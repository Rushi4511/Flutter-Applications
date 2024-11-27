import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Appbar3 extends StatelessWidget {
  const Appbar3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello Core2Web"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 360,
                color: Colors.blue,
              )
            ],
          )
        ],
      ),
    );
  }
}
