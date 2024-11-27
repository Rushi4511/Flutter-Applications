import "package:flutter/material.dart";

class Lecture65_2 extends StatefulWidget {
  const Lecture65_2({super.key});
  @override
  State<Lecture65_2> createState() => _Lecture65_2State();
}

class _Lecture65_2State extends State<Lecture65_2> {
  bool box1col = false;
  bool box2col = false;

  Color Box1Color() {
    if (box1col == false) {
      return Colors.black;
    } else {
      return Colors.red;
    }
  }

  Color Box2Color() {
    if (box2col == false) {
      return Colors.black;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("ColorboxApp"),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          color: Box1Color(),
                        ),
                        SizedBox(
                          height: 20,
                          width: 20,
                        ),
                        ElevatedButton(
                          onPressed: () => setState(() {
                            if (box1col == false) {
                              box1col = true;
                            } else {
                              box1col = false;
                            }
                          }),
                          child: const Text("Button1"),
                        ),
                        SizedBox(
                          height: 20,
                          width: 20,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          color: Box2Color(),
                        ),
                        SizedBox(
                          height: 20,
                          width: 20,
                        ),
                        ElevatedButton(
                          onPressed: () => setState(() {
                            if (box2col == false) {
                              box2col = true;
                            } else {
                              box2col = false;
                            }
                          }),
                          child: const Text("Button1"),
                        ),
                        SizedBox(
                          height: 20,
                          width: 20,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            )));
  }
}
