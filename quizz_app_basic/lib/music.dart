import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MusicApp extends StatefulWidget {
  const MusicApp({super.key});
  @override
  State createState() => _MusicAppState();
}

class _MusicAppState extends State<MusicApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("MusicApp"),
          backgroundColor: Colors.grey,
        ),
        body: Column(
          children: [
            Container(
              height: 648,
              width: 497,
              child: Stack(
                children: [
                  Container(
                    height: 648,
                    width: 497,
                    child: Image.asset(
                      "assets/music.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                      alignment: Alignment.bottomCenter,
                      child: const Positioned(
                        top: 440,
                        bottom: 44,
                        child: Text(
                          '''Dancing between
The shadows 
Of rhythm''',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                  const SizedBox(
                    height: 44,
                  ),
                ],
              ),
            ),
            Container(
                decoration: BoxDecoration(color: Colors.black),
                child: Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.black,
                      ),
                    ),

                    // ElevatedButton(
                    //     style: ElevatedButton.styleFrom(
                    //       side: const BorderSide(
                    //           color: Color.fromARGB(255, 244, 194, 192),
                    //           width: 0.6),
                    //       minimumSize: const Size(180, 70),
                    //       fixedSize: Size(261, 47),
                    //       backgroundColor: Color.fromARGB(255, 242, 7, 7),
                    //     ),
                    //     onPressed: () => setState(() {}),
                    //     child: const Text("Get started",
                    //         style: TextStyle(
                    //             fontSize: 20,
                    //             fontWeight: FontWeight.w600,
                    //             color: Color.fromARGB(255, 18, 18, 18)))),
                  ],
                ))
          ],
        ));
  }
}
