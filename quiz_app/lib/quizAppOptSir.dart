import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter/services.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});
  @override
  State createState() => _QuizApp();
}

class _QuizApp extends State {
  List<Map> queList = [
    {
      "question": "Who is founder of Microsoft Company?",
      "options": ["Steve jobs", " Bills gates", " Elon musk", "jaff bazze"],
      "correctOpt": 1
    },
    {
      "question": "Who is founder of Apple Company ?",
      "options": ["Steve jobs", " Bills gates", " Elon musk", "jaff bazze"],
      "correctOpt": 0
    },
    {
      "question": "Who is founder of Amazon Company ?",
      "options": ["Steve jobs", " Bills gates", " Elon musk", "jaff bazze"],
      "correctOpt": 3
    },
    {
      "question": "Who is founder of Tesla Company ?",
      "options": ["Steve jobs", " Bills gates", " Elon musk", "jaff bazze"],
      "correctOpt": 2
    },
    {
      "question":
          "Is Microsoft Co-operation parent company of Microsoft Company ?",
      "options": ["Yes", " No"],
      "correctOpt": 0
    },
    {
      "question": "Who is parent company of Google Company?",
      "options": ["Facebook", " Aplabet", "VmWare"],
      "correctOpt": 1
    }
  ];
  int queIndex = 0;
  int selectedOptIndex = -1;
  int score = 0;
  Color? colorsPicker(int selectedIndex) {
    if (selectedIndex == queList[queIndex]["correctOpt"]) {
      return Colors.green;
    } else if (selectedOptIndex == selectedIndex) {
      return Colors.red;
    } else {
      return null;
    }
  }

  Scaffold scaffoldShift() {
    if (queIndex < queList.length) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 189, 117, 202),
        ),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Text("Questions : ${queIndex + 1} / ${queList.length}",
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 15)),
              const SizedBox(
                height: 10,
              ),
              Text("Q. ${queIndex + 1} : ${queList[queIndex]["question"]}",
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 20)),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                  height: 300,
                  width: 500,
                  child: ListView.builder(
                    itemCount: queList[queIndex]["options"].length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ElevatedButton(
                            onPressed: (selectedOptIndex == -1)
                                ? () {
                                    setState(() {
                                      selectedOptIndex = index;
                                    });
                                  }
                                : () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: (selectedOptIndex != -1)
                                    ? colorsPicker(index)
                                    : null,
                                minimumSize: const Size(60, 60),
                                shadowColor:
                                    const Color.fromARGB(255, 127, 0, 254),
                                surfaceTintColor:
                                    const Color.fromARGB(255, 217, 5, 236)),
                            child: Text(queList[queIndex]["options"][index],
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    color: Colors.black)),
                          ),
                          const SizedBox(
                            height: 15,
                          )
                        ],
                      );
                    },
                  ))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (selectedOptIndex != -1)
              ? () {
                  if (selectedOptIndex == queList[queIndex]["correctOpt"]) {
                    score += 1;
                  }
                  setState(() {
                    selectedOptIndex = -1;
                    queIndex++;
                  });
                }
              : null,
          child: const Icon(Icons.arrow_forward_rounded),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 189, 117, 202),
        ),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              (score >= (queList.length * 40) ~/ 100)
                  ? Text(
                      "Congratulations",
                      style: TextStyle(
                          color: (queList.length == score)
                              ? (Colors.green)
                              : (Color.fromARGB(255, 241, 218, 6)),
                          fontSize: 30,
                          fontWeight: FontWeight.w700),
                    )
                  : const Text(
                      "You are failed",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 30,
                          fontWeight: FontWeight.w700),
                    ),
              const SizedBox(
                height: 15,
              ),
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(35)),
                child: Image.network(
                  (score == queList.length)
                      ? "https://gifdb.com/images/high/best-intro-win-trophy-3lszjzotcejeney6.gif"
                      : (score >= (queList.length * 40) ~/ 100)
                          ? "https://media3.giphy.com/media/9xt1MUZqkneFiWrAAD/giphy.gif"
                          : "https://media.tenor.com/dKZRyUaeO0oAAAAM/better-luck-next-time-good-luck.gif",
                  height: 220,
                  width: 220,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("$score ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: (score == queList.length)
                            ? (Colors.green)
                            : (score >= (queList.length * 40) ~/ 100)
                                ? Colors.yellow
                                : Colors.red,
                      )),
                  Text(
                    " / ${queList.length}  ",
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 28, 5, 5)),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  (queList.length > score)
                      ? ElevatedButton(
                          onPressed: () {
                            selectedOptIndex = -1;
                            queIndex = 0;
                            score = 0;

                            setState(() {});
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(40, 50),
                            shadowColor: const Color.fromARGB(255, 127, 0, 254),
                            surfaceTintColor:
                                const Color.fromARGB(255, 217, 5, 236),
                          ),
                          child: const Text(
                            "Reset",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ))
                      : const SizedBox(),
                  const SizedBox(
                    width: 10,
                  ),
                  (score >= ((queList.length * 40) / ~100))
                      ? ElevatedButton(
                          onPressed: () {
                            if (Platform.isAndroid) {
                              SystemNavigator.pop();
                            } else {
                              exit(0);
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(40, 50),
                            shadowColor: const Color.fromARGB(255, 127, 0, 254),
                            surfaceTintColor:
                                const Color.fromARGB(255, 217, 5, 236),
                          ),
                          child: const Text(
                            "Close",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ))
                      : const SizedBox(),
                  const SizedBox(
                    width: 10,
                  )
                ],
              )
            ],
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return scaffoldShift();
  }
}
