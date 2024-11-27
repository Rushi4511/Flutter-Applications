import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter/services.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});
  @override
  State createState() => _QuizApp();
}

class SingleModelClass {
  const SingleModelClass({this.question, this.options, this.correctOpt});
  final String? question;
  final List<String>? options;
  final int? correctOpt;
}

class _QuizApp extends State {
  bool startQuiz = true;
  List queList = [
    const SingleModelClass(
        question: "Which company developed flutter?",
        options: ["Amazon", "Google", "Microsoft", "Nvidia"],
        correctOpt: 1),
    const SingleModelClass(
        question: "In which year flutter was released ?",
        options: ["2017", " 2018", "2021", "1999"],
        correctOpt: 0),
    const SingleModelClass(
        question: "Which devices app are made in flutter?",
        options: ["IOS", "Android", "Both IOS and Android", "None of these"],
        correctOpt: 2),
    const SingleModelClass(
        question: "Which language is used in flutter ?",
        options: ["Python", "Java", "Dart", "C++"],
        correctOpt: 2),
    const SingleModelClass(
        question: "Does dart support method overloading?",
        options: ["Yes", " No"],
        correctOpt: 1),
    const SingleModelClass(
        question:
            "class A{\n \t\t\t\t\t   static int x=4;\n \t\t}\n   \t\tvoid main()=>print(A().x);\nOutput?",
        options: ["Compile time error", "4", "null"],
        correctOpt: 0),
    const SingleModelClass(
        question:
            "class A{\n\t\t\t\t\t   static int x=0;\n \t\t}\n\t\tclass B extends A{\n\t\t}\nvoid main()=>print(B().x)\nOutput?",
        options: ["0", "Compile time error", "null"],
        correctOpt: 1),
    const SingleModelClass(
        question:
            "Static variable or method are only accesed by its class name in dart?",
        options: ["True", "False"],
        correctOpt: 0),
    const SingleModelClass(
        question:
            "For using Normal class as interface we have to  _________ the class?",
        options: ["extends", "implement", "Use iterface keyword"],
        correctOpt: 1),
    const SingleModelClass(
        question:
            "Which construtor returns the same object of itself or its child?",
        options: [
          "default constructor",
          "Factory constructor",
          "constant constructor",
          "parameterized constructor"
        ],
        correctOpt: 1),
  ];
  int queIndex = 0;
  int selectedOptIndex = -1;
  int score = 0;
  Color? colorsPicker(int selectedIndex) {
    if (selectedIndex == queList[queIndex].correctOpt) {
      return Colors.green;
    } else if (selectedOptIndex == selectedIndex) {
      return Colors.red;
    } else {
      return null;
    }
  }

  double getSize(List<String> listOpt) {
    int i = 0;
    int max = 0;
    while (i < listOpt.length) {
      if (max < listOpt[i].length) {
        max = listOpt[i].length;
      }
      i++;
    }
    return max * 18;
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
          backgroundColor: Color.fromARGB(255, 102, 103, 103),
        ),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 15,
              ),
              Text("Questions : ${queIndex + 1} / ${queList.length}",
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 17)),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(3),
                width: 380,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(255, 92, 90, 90),
                          offset: Offset(4.0, 4.0),
                          blurRadius: 15,
                          spreadRadius: 1.0),
                      BoxShadow(
                          color: Colors.white,
                          offset: Offset(-4.0, -4.0),
                          blurRadius: 15,
                          spreadRadius: 1.0),
                    ],
                    borderRadius: BorderRadius.circular(25),
                    color: const Color.fromARGB(255, 235, 244, 244)),
                child: Center(
                  child: Text(
                      "   Q. ${queIndex + 1} : ${queList[queIndex].question}  \n",
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 20)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: queList[queIndex].options.length,
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
                                side: const BorderSide(
                                  style: BorderStyle.solid,
                                  color: Color.fromARGB(255, 111, 109, 109),
                                  width: 0.6,
                                ),
                                backgroundColor: (selectedOptIndex != -1)
                                    ? colorsPicker(index)
                                    : null,
                                //fixedSize: Size(getSize(queList[queIndex].options),0),
                                minimumSize: Size(
                                    getSize(queList[queIndex].options), 60),
                                shadowColor: Color.fromARGB(255, 79, 79, 79),
                                surfaceTintColor:
                                    Color.fromARGB(255, 79, 79, 79)),
                            child: Text(
                                "${String.fromCharCode(65 + index)}. ${queList[queIndex].options[index]}",
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
          backgroundColor: Color.fromARGB(255, 207, 203, 203),
          onPressed: (selectedOptIndex != -1)
              ? () {
                  if (selectedOptIndex == queList[queIndex].correctOpt) {
                    score += 1;
                  }
                  setState(() {
                    selectedOptIndex = -1;
                    queIndex++;
                  });
                }
              : null,
          child: const Icon(
            Icons.arrow_forward_rounded,
            color: Colors.black,
          ),
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
          backgroundColor: Color.fromARGB(255, 102, 103, 103),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              "images/lightbulb12.gif",
              fit: BoxFit.cover,
              height: 40,
              width: 40,
            ),
          ),
        ),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: const Color.fromARGB(255, 223, 247, 250),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 152, 149, 151),
                      offset: Offset(4.0, 4.0),
                      blurRadius: 15,
                      spreadRadius: 1.0),
                  BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4.0, -4.0),
                      blurRadius: 15,
                      spreadRadius: 1.0),
                ],
              ),
              height: 520,
              width: 382,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("Result:- ",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      )),
                  const SizedBox(
                    height: 5,
                  ),
                  (score >= (queList.length * 40) ~/ 100)
                      ? Text(
                          "Congratulations",
                          style: TextStyle(
                              color: (queList.length == score)
                                  ? (Colors.green)
                                  : (Color.fromARGB(255, 250, 205, 4)),
                              fontSize: 40,
                              fontWeight: FontWeight.w700),
                        )
                      : const Text(
                          "You are failed",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 40,
                              fontWeight: FontWeight.w700),
                        ),
                  const SizedBox(
                    height: 15,
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(35)),
                    child: Image.asset(
                      (score == queList.length)
                          ? "images/win.gif"
                          : (score >= (queList.length * 40) ~/ 100)
                              ? "images/flower.gif"
                              : "images/betterluckNT.gif",
                      height: 250,
                      width: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Score: ",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Colors.black)),
                      Text("$score",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: (score == queList.length)
                                ? (Colors.green)
                                : (score >= (queList.length * 40) ~/ 100)
                                    ? Color.fromARGB(255, 158, 143, 2)
                                    : Colors.red,
                          )),
                      Text(
                        " / ${queList.length}  ",
                        style: const TextStyle(
                            fontSize: 25,
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
                                shadowColor: Color.fromARGB(255, 196, 194, 198),
                                side: const BorderSide(
                                    color: Color.fromARGB(255, 244, 194, 192),
                                    width: 0.6),
                                surfaceTintColor:
                                    Color.fromARGB(255, 169, 165, 169),
                              ),
                              child: const Text(
                                "Reset",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
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
                                side: const BorderSide(
                                    color: Color.fromARGB(255, 244, 194, 192),
                                    width: 0.6),
                                minimumSize: const Size(40, 50),
                                shadowColor:
                                    const Color.fromARGB(255, 169, 165, 169),
                                surfaceTintColor:
                                    const Color.fromARGB(255, 169, 165, 169),
                              ),
                              child: const Text(
                                "Close",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
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
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (startQuiz) {
      return Scaffold(
          appBar: AppBar(
            title: const Text(
              "QuizApp",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  color: Colors.black),
            ),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 102, 103, 103),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                "images/lightbulb12.gif",
                fit: BoxFit.cover,
                height: 40,
                width: 40,
              ),
            ),
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            color: Color.fromARGB(255, 255, 255, 255),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(150),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(255, 87, 85, 87),
                              offset: Offset(10, 10),
                              blurRadius: 8,
                              spreadRadius: 1),
                        ]),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(150),
                      child: Image.asset(
                        "images/lightbulb.gif",
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        side: const BorderSide(
                            color: Color.fromARGB(255, 244, 194, 192),
                            width: 0.6),
                        minimumSize: const Size(180, 70),
                        backgroundColor: Color.fromARGB(255, 225, 235, 233),
                        shadowColor: const Color.fromARGB(255, 127, 0, 254),
                        surfaceTintColor: Color.fromARGB(255, 121, 118, 122),
                      ),
                      onPressed: () {
                        setState(() {
                          startQuiz = false;
                        });
                      },
                      child: const Text("Start Quiz -->",
                          style: TextStyle(
                              fontSize: 21.7,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 18, 18, 18)))),
                  const SizedBox(
                    height: 15,
                  ),
                  TextButton(
                      onPressed: () {
                        if (Platform.isAndroid) {
                          SystemNavigator.pop();
                        } else {
                          exit(0);
                        }
                      },
                      child: const Text("close",
                          style: TextStyle(
                              fontSize: 16.8,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 2, 2, 2)))),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(150),
                    ),
                    child: Image.asset(
                      "images/sandtimer.gif",
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ));
    } else {
      return scaffoldShift();
    }
  }
}
