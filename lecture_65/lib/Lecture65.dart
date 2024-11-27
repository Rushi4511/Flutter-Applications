import "package:flutter/material.dart";

class Lecture65 extends StatefulWidget {
  const Lecture65({super.key});

  @override
  State<Lecture65> createState() => _Lecture65State();
}

class _Lecture65State extends State<Lecture65> {
  bool box1Color = false;
  bool box2Color = false;

  Color setBox1Color() {
    if (box1Color == false) {
      return Colors.red;
    } else {
      return Colors.black;
    }
  }

  Color setBox2Color() {
    if (box2Color == false) {
      return Colors.red;
    } else {
      return Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("ColorBox"),
              backgroundColor: Colors.blue,
            ),
            body:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(children: [
                      Container(
                        height: 100,
                        width: 100,
                        color: setBox2Color(),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (box1Color == false) {
                              box1Color = true;
                            } else {
                              box1Color = false;
                            }
                            ;
                          });
                        },
                        child: const Text("Color Box1"),
                      )
                    ]),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(children: [
                      Container(
                        height: 100,
                        width: 100,
                        color: setBox2Color(),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (box2Color == false) {
                              box2Color = true;
                            } else {
                              box2Color = false;
                            }
                            ;
                          });
                        },
                        child: const Text("Color Box2"),
                      )
                    ]),
                    const SizedBox(
                      width: 20,
                    ),
                  ])
            ])));
  }
}
