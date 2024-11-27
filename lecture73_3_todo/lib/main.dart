import 'package:flutter/material.dart';
import "package:sqflite/sqflite.dart";
import "package:path/path.dart";

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  final index = 10;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text("Tododemo")),
            body: Padding(
                padding: const EdgeInsets.all(40),
                child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: (context, index) => Container(
                            child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 120,
                                  height: 120,
                                  decoration: BoxDecoration(
                                      color:
                                          const Color.fromRGBO(2, 147, 172, 1),
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                          width: 2,
                                          color:
                                              const Color.fromRGBO(0, 0, 0, 1)),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.black54,
                                          offset: Offset(-20, -20),
                                          blurRadius: 10,
                                        )
                                      ]),
                                  child: Image.network(
                                      "https://cdn.pixabay.com/photo/2016/03/31/19/50/checklist-1295319_1280.png"),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                const Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Lorem Ipsum is simply dummy industry. ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Simply dummy text of the printing and type setting industry. Lorem Ipsum Lorem Ipsum Lorem. ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Row(
                              children: [
                                Text(
                                  "12 July 2023",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                  ),
                                ),
                                Spacer(flex: 20),
                                Icon(
                                  Icons.edit,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.delete,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ))))));
  }
}
