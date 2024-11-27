import "dart:ffi";

import "package:flutter/material.dart";

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  State<Assignment3> createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3> {
  int? selectedIndex = 0;
  final List<int> imageList = [121, 141, 151, 161, 171];
  int count = 0;

  @override
  setstate {
    void Pal() {
    if (count != 0) {
      int i = 0;
      int num = imageList[i];
      int n = 0;
      int temp = num;
      int rev = 0;
      while (temp != 0) {
        n = temp % 10;
        rev = rev * 10 + n;

        temp = temp ~/ 10;
      }
    }
    super.setState(Pal);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Display Images"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$count"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: Pal,
              child: const Text("Palindrome"),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        )));
  }
}
}