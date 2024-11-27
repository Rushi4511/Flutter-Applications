import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  State<Assignment2> createState() => _Assignment2State();
}

class _Assignment2State extends State<Assignment2> {
  bool box1Color = false;
  bool box2Color = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Assignment 2"),
            backgroundColor: Colors.deepOrange,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: SingleChildScrollView([
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        color: box1Color
                            ? const Color.fromARGB(255, 215, 126, 37)
                            : const Color.fromARGB(31, 142, 10, 203),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              //box1Color = true;
                              box1Color = !box1Color;
                            });
                          },
                          child: const Text("ColorBox1"))
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),

                  // Box 2
                  Column(
                    children: [
                      Container(
                          height: 100,
                          width: 100,
                          color: box2Color
                              ? const Color.fromARGB(255, 37, 215, 73)
                              : Colors.blue),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              //box1Color = true;
                              box2Color = !box2Color;
                            });
                          },
                          child: const Text("ColorBox2"))
                    ],
                  )
                ],
              )
            ]),
          )),
    );
  }
}
