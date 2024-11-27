import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});
  @override
  State<StatefulWidget> createState() => _QuizApp();
}

class _QuizApp extends State {
  int page = 1;
  int pos1 = 0;
  int right1 = 0;
  int pos2 = 0;
  int right2 = 0;
  int pos3 = 0;
  int right3 = 0;
  int pos4 = 0;
  int right4 = 0;
  int pos5 = 0;
  int right5 = 0;
  int count = 1;

  int score = 0;
  reset() {
    setState(() {
      page = 1;
      pos1 = 0;
      right1 = 0;
      pos2 = 0;
      right2 = 0;
      pos3 = 0;
      right3 = 0;
      pos4 = 0;
      right4 = 0;
      pos5 = 0;
      right5 = 0;
      score = 0;
      count = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          shadowColor: Colors.grey,
          backgroundColor: Colors.blue,
          actions: [
            ElevatedButton(
              onPressed: reset,
              child: const Text(
                "Reset",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            )
          ],
          centerTitle: true),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                (page == 1)
                    ? Column(children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Q1. What should be writen for printing on terminal in java ?",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 28, 5, 5)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              if (pos1 == 0) {
                                setState(() {
                                  pos1 = 1;
                                  right1 = 2;
                                });
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    (pos1 == 1) ? Colors.red : Colors.blue),
                            child: const Text(
                              "print()",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 28, 5, 5)),
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              if (pos1 == 0) {
                                setState(() {
                                  pos1 = 2;
                                  right1 = 2;
                                });
                                if (count <= 5) {
                                  score++;
                                }
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    (right1 == 2) ? Colors.green : Colors.blue),
                            child: const Text(
                              "System.out.println()",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 28, 5, 5)),
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              if (pos1 == 0) {
                                setState(() {
                                  pos1 = 3;
                                  right1 = 2;
                                });
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    (pos1 == 3) ? Colors.red : Colors.blue),
                            child: const Text(
                              "count<<",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 28, 5, 5)),
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              if (pos1 == 0) {
                                setState(() {
                                  pos1 = 4;
                                  right1 = 2;
                                });
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    (pos1 == 4) ? Colors.red : Colors.blue),
                            child: const Text(
                              "None of these",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 28, 5, 5)),
                            ))
                      ])
                    : (page == 2)
                        ? Column(children: [
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Q2. In which language static doesn't get inherited ?",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 28, 5, 5)),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  if (pos2 == 0) {
                                    setState(() {
                                      pos2 = 1;
                                      right2 = 1;
                                    });
                                    if (count <= 5) {
                                      score++;
                                    }
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: (right2 == 1)
                                        ? Colors.green
                                        : Colors.blue),
                                child: const Text(
                                  "Dart",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 28, 5, 5)),
                                )),
                            const SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  if (pos2 == 0) {
                                    setState(() {
                                      pos2 = 2;
                                      right2 = 1;
                                    });
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        (pos2 == 2) ? Colors.red : Colors.blue),
                                child: const Text(
                                  "java",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 28, 5, 5)),
                                )),
                            const SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  if (pos2 == 0) {
                                    setState(() {
                                      pos2 = 3;
                                      right2 = 1;
                                    });
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        (pos2 == 3) ? Colors.red : Colors.blue),
                                child: const Text(
                                  "python",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 28, 5, 5)),
                                )),
                            const SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  if (pos2 == 0) {
                                    setState(() {
                                      pos2 = 4;
                                      right2 = 1;
                                    });
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        (pos2 == 4) ? Colors.red : Colors.blue),
                                child: const Text(
                                  "javaScript",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 28, 5, 5)),
                                ))
                          ])
                        : (page == 3)
                            ? Column(children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "Q3. What should be writen for printing on terminal in java ?",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 28, 5, 5)),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      if (pos3 == 0) {
                                        setState(() {
                                          pos3 = 1;
                                          right3 = 2;
                                        });
                                      }
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: (pos3 == 1)
                                            ? Colors.red
                                            : Colors.blue),
                                    child: const Text(
                                      "print()",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromARGB(255, 28, 5, 5)),
                                    )),
                                const SizedBox(
                                  height: 20,
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      if (pos3 == 0) {
                                        setState(() {
                                          pos3 = 2;
                                          right3 = 2;
                                        });
                                        if (count <= 5) {
                                          score++;
                                        }
                                      }
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: (right3 == 2)
                                            ? Colors.green
                                            : Colors.blue),
                                    child: const Text(
                                      "System.out.println()",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromARGB(255, 28, 5, 5)),
                                    )),
                                const SizedBox(
                                  height: 20,
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      if (pos3 == 0) {
                                        setState(() {
                                          pos3 = 3;
                                          right3 = 2;
                                        });
                                      }
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: (pos3 == 3)
                                            ? Colors.red
                                            : Colors.blue),
                                    child: const Text(
                                      "count<<",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromARGB(255, 28, 5, 5)),
                                    )),
                                const SizedBox(
                                  height: 20,
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      if (pos3 == 0) {
                                        setState(() {
                                          pos3 = 4;
                                          right3 = 2;
                                        });
                                      }
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: (pos3 == 4)
                                            ? Colors.red
                                            : Colors.blue),
                                    child: const Text(
                                      "None of these",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromARGB(255, 28, 5, 5)),
                                    ))
                              ])
                            : (page == 4)
                                ? Column(children: [
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const Text(
                                      "Q4. What should be writen for printing on terminal in java ?",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromARGB(255, 28, 5, 5)),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    ElevatedButton(
                                        onPressed: () {
                                          if (pos4 == 0) {
                                            setState(() {
                                              pos4 = 1;
                                              right4 = 2;
                                            });
                                          }
                                        },
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: (pos4 == 1)
                                                ? Colors.red
                                                : Colors.blue),
                                        child: const Text(
                                          "print()",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromARGB(
                                                  255, 28, 5, 5)),
                                        )),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    ElevatedButton(
                                        onPressed: () {
                                          if (pos4 == 0) {
                                            setState(() {
                                              pos4 = 2;
                                              right4 = 2;
                                            });
                                            if (count <= 5) {
                                              score++;
                                            }
                                          }
                                        },
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: (right4 == 2)
                                                ? Colors.green
                                                : Colors.blue),
                                        child: const Text(
                                          "System.out.println()",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromARGB(
                                                  255, 28, 5, 5)),
                                        )),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    ElevatedButton(
                                        onPressed: () {
                                          if (pos4 == 0) {
                                            setState(() {
                                              pos4 = 3;
                                              right4 = 2;
                                            });
                                          }
                                        },
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: (pos4 == 3)
                                                ? Colors.red
                                                : Colors.blue),
                                        child: const Text(
                                          "count<<",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromARGB(
                                                  255, 28, 5, 5)),
                                        )),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    ElevatedButton(
                                        onPressed: () {
                                          if (pos4 == 0) {
                                            setState(() {
                                              pos4 = 4;
                                              right4 = 2;
                                            });
                                          }
                                        },
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: (pos4 == 4)
                                                ? Colors.red
                                                : Colors.blue),
                                        child: const Text(
                                          "None of these",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromARGB(
                                                  255, 28, 5, 5)),
                                        ))
                                  ])
                                : (page == 5)
                                    ? Column(children: [
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        const Text(
                                          "Q5. What should be writen for printing on terminal in java ?",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromARGB(
                                                  255, 28, 5, 5)),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        ElevatedButton(
                                            onPressed: () {
                                              if (pos5 == 0) {
                                                setState(() {
                                                  pos5 = 1;
                                                  right5 = 2;
                                                });
                                              }
                                            },
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: (pos5 == 1)
                                                    ? Colors.red
                                                    : Colors.blue),
                                            child: const Text(
                                              "print()",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color.fromARGB(
                                                      255, 28, 5, 5)),
                                            )),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        ElevatedButton(
                                            onPressed: () {
                                              if (pos5 == 0) {
                                                setState(() {
                                                  pos5 = 2;
                                                  right5 = 2;
                                                });
                                                if (count <= 5) {
                                                  score++;
                                                }
                                              }
                                            },
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: (right5 == 2)
                                                    ? Colors.green
                                                    : Colors.blue),
                                            child: const Text(
                                              "System.out.println()",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color.fromARGB(
                                                      255, 28, 5, 5)),
                                            )),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        ElevatedButton(
                                            onPressed: () {
                                              if (pos5 == 0) {
                                                setState(() {
                                                  pos5 = 3;
                                                  right5 = 2;
                                                });
                                              }
                                            },
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: (pos5 == 3)
                                                    ? Colors.red
                                                    : Colors.blue),
                                            child: const Text(
                                              "count<<",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color.fromARGB(
                                                      255, 28, 5, 5)),
                                            )),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        ElevatedButton(
                                            onPressed: () {
                                              if (pos5 == 0) {
                                                setState(() {
                                                  pos5 = 4;
                                                  right5 = 2;
                                                });
                                              }
                                            },
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: (pos5 == 4)
                                                    ? Colors.red
                                                    : Colors.blue),
                                            child: const Text(
                                              "None of these",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color.fromARGB(
                                                      255, 28, 5, 5)),
                                            ))
                                      ])
                                    : (page == 6)
                                        ? Column(
                                            children: [
                                              const Text(
                                                "Your score is : ",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color.fromARGB(
                                                        255, 28, 5, 5)),
                                              ),
                                              (score == 5)
                                                  ? Column(children: [
                                                      Row(
                                                        children: [
                                                          Text(
                                                            "$score",
                                                            style: const TextStyle(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        22,
                                                                        247,
                                                                        6)),
                                                          ),
                                                          const Text(
                                                            " /5 : ",
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        28,
                                                                        5,
                                                                        5)),
                                                          ),
                                                        ],
                                                      ),
                                                      const Icon(
                                                        Icons
                                                            .emoji_emotions_rounded,
                                                        color: Colors.green,
                                                        size: 50,
                                                      ),
                                                      const Text(
                                                        "You got First class ",
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    46,
                                                                    233,
                                                                    8)),
                                                      ),
                                                    ])
                                                  : (score > 1)
                                                      ? Column(children: [
                                                          Row(
                                                            children: [
                                                              Text(
                                                                "$score",
                                                                style: const TextStyle(
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            8,
                                                                            244,
                                                                            24)),
                                                              ),
                                                              const Text(
                                                                " /5 : ",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            28,
                                                                            5,
                                                                            5)),
                                                              ),
                                                            ],
                                                          ),
                                                          const Icon(
                                                            Icons
                                                                .emoji_emotions_rounded,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    242,
                                                                    218,
                                                                    5),
                                                            size: 50,
                                                          ),
                                                          const Text(
                                                            "You got passed ",
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        46,
                                                                        233,
                                                                        8)),
                                                          ),
                                                        ])
                                                      : Column(children: [
                                                          Row(
                                                            children: [
                                                              Text(
                                                                "$score ",
                                                                style: const TextStyle(
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            243,
                                                                            7,
                                                                            7)),
                                                              ),
                                                              const Text(
                                                                " /5 : ",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            28,
                                                                            5,
                                                                            5)),
                                                              ),
                                                            ],
                                                          ),
                                                          const Text(
                                                            "You got failed ",
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        225,
                                                                        6,
                                                                        6)),
                                                          ),
                                                        ])
                                            ],
                                          )
                                        : const SizedBox(),
              ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
          setState(() {
            page++;
          });
          if (page == 7) {
            page = 1;
          }
        },
        child: (page < 6)
            ? const Text(
                "Next ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              )
            : const Text(
                "Revise ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
      ),
    );
  }
}
