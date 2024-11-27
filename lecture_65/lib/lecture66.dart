import "package:flutter/material.dart";

class Lecture66 extends StatefulWidget {
  @override
  State<Lecture66> createState() => _Lecture66State();
}

class _Lecture66State extends State<Lecture66> {
  bool box1col1 = false;
  bool box2col2 = false;

  Color Box1Color() {
    if (box1col1 == false) {
      return Colors.black;
    } else {
      return Colors.red;
    }
  }

  Color Box2Color() {
    if (box2col2 == false) {
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
            body: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                        if (box1col1 = false) {
                          box1col1 = true;
                        } else {
                          box1col1 = false;
                        }
                      }),
                      child: const Text("Button1"),
                    ),
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
                        if (box2col2 = false) {
                          box2col2 = true;
                        } else {
                          box2col2 = false;
                        }
                      }),
                      child: const Text("Button1"),
                    )
                  ],
                )
              ],
            )));
  }
}
