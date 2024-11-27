import "package:flutter/material.dart";

class Appbar4 extends StatelessWidget {
  const Appbar4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              color: Colors.black,
            ),
            SizedBox(
              height: 20,
              width: 20,
            ),
            Container(
              height: 300,
              width: 300,
              color: Colors.black,
            ),
          ],
        ),
      ],
    ));
  }
}
