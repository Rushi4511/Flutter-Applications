import "package:flutter/material.dart";

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State createState() => _QuizApp();
}

class _QuizApp extends State<QuizApp> {
  int quesIndex = 0;
  int score = 0;
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
  bool quesSaff = true;
  List<bool> flag = [true, true, true, true];
  Color buttonColor(int index) {
    if (flag[index] == false) {
      if (queList[quesIndex]["correctOpt"] == index) {
        return Colors.green;
      } else {
        return Colors.red;
      }
    } else {
      //return Color.fromARGB(255, 226, 172, 190);
      return const Color.fromARGB(255, 225, 169, 235);
    }
  }

  Scaffold scaffoldChecker() {
    if (quesIndex < queList.length) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 189, 117, 202),
          actions: const [
            Text(
              "....by Kunal Sontakke",
              textAlign: TextAlign.end,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13.2),
            )
          ],
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Questions: ",
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 15)),
                Text(" ${quesIndex + 1} / ${queList.length} ",
                    style: const TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 15))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 80,
              width: 400,
              child: Text(
                "${queList[quesIndex]["question"]}",
                style:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            (1 <= queList[quesIndex]["options"].length)
                ? ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: buttonColor(0)),
                    onPressed: flag.contains(false)
                        ? () {}
                        : () {
                            setState(() {
                              flag[queList[quesIndex]["correctOpt"]] = false;
                              flag[0] = false;
                            });
                            if (queList[quesIndex]["correctOpt"] == 0) {
                              score++;
                            }
                          },
                    child: Text(queList[quesIndex]["options"][0],
                        style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.black)),
                  )
                : const SizedBox(),
            const SizedBox(
              height: 25,
            ),
            (2 <= queList[quesIndex]["options"].length)
                ? ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: buttonColor(1)),
                    onPressed: flag.contains(false)
                        ? () {}
                        : () {
                            setState(() {
                              flag[queList[quesIndex]["correctOpt"]] = false;
                              flag[1] = false;
                            });
                            if (queList[quesIndex]["correctOpt"] == 1) {
                              score++;
                            }
                          },
                    child: Text(queList[quesIndex]["options"][1],
                        style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.black)),
                  )
                : const SizedBox(),
            const SizedBox(
              height: 25,
            ),
            (3 <= queList[quesIndex]["options"].length)
                ? ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: buttonColor(2)),
                    onPressed: flag.contains(false)
                        ? () {}
                        : () {
                            setState(() {
                              flag[queList[quesIndex]["correctOpt"]] = false;
                              flag[2] = false;
                            });
                            if (queList[quesIndex]["correctOpt"] == 2) {
                              score++;
                            }
                          },
                    child: Text(queList[quesIndex]["options"][2],
                        style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.black)),
                  )
                : const SizedBox(),
            const SizedBox(
              height: 25,
            ),
            (4 <= queList[quesIndex]["options"].length)
                ? ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: buttonColor(3)),
                    onPressed: flag.contains(false)
                        ? () {}
                        : () {
                            setState(() {
                              flag[queList[quesIndex]["correctOpt"]] = false;
                              flag[3] = false;
                            });
                            if (queList[quesIndex]["correctOpt"] == 3) {
                              score++;
                            }
                          },
                    child: Text(queList[quesIndex]["options"][3],
                        style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.black)),
                  )
                : const SizedBox(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (flag.contains(false))
              ? () {
                  flag.clear();
                  flag = [true, true, true, true];
                  setState(() {
                    quesIndex++;
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
          actions: const [
            Text(
              "....by Kunal Sontakke",
              textAlign: TextAlign.end,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13.2),
            )
          ],
        ),
        body: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Your score is : ",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "$score ",
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 233, 191, 4)),
                    ),
                    Text(
                      " / ${queList.length} : ",
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 28, 5, 5)),
                    ),
                  ],
                ),
                (score == queList.length)
                    ? const Text(
                        "You got first class",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 10, 237, 6)),
                      )
                    : (score >= (queList.length * 40) ~/ 100)
                        ? const Text(
                            "You got passed",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 242, 242, 3)),
                          )
                        : const Text(
                            "You are failed",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 28, 5, 5)),
                          ),
                (score == queList.length)
                    ? const Icon(
                        Icons.emoji_emotions_rounded,
                        color: Colors.green,
                        size: 80,
                      )
                    : (score >= (queList.length * 40) ~/ 100)
                        ? const Icon(
                            Icons.emoji_emotions_rounded,
                            color: Color.fromARGB(255, 194, 241, 3),
                            size: 80,
                          )
                        : const Icon(
                            Icons.emoji_emotions_rounded,
                            color: Colors.red,
                            size: 80,
                          )
              ],
            )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            flag.clear();
            flag = [true, true, true, true];

            setState(() {
              quesIndex = 0;
              score = 0;
            });
          },
          child: const Text("Reset"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return scaffoldChecker();
  }
}
