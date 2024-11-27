import "package:flutter/material.dart";

class Appbar2 extends StatelessWidget {
  const Appbar2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("APPBAR2"),
        actions: [
          Icon(Icons.menu),
        ],
      ),
    );
  }
}
