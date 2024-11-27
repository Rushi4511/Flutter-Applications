import "package:flutter/material.dart";

class Appbar5 extends StatelessWidget {
  const Appbar5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          children: [
            Image.asset("images/45.jpeg", height: 300, width: 300),
            Image.asset("images/sharma.jpeg", height: 300, width: 300),
            Image.asset("images/sharma2.jpeg", height: 300, width: 300),
          ],
        ),
      ),
    );
  }
}
