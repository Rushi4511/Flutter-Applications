import 'package:flutter/material.dart';

void main() {
  runApp(const assignment3());
}

class assignment3 extends StatelessWidget {
  const assignment3({super.key});

  Widget build(BuildContext cont) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(48, 0, 247, 78),
        title: const Text('Assignment 3'),
      ),
      body: SizedBox(
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(255, 130, 7, 230),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: () {}, child: const Text("Button 1")),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: () {}, child: const Text("Button 2")),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(255, 5, 246, 222),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: () {}, child: const Text("Button3")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
