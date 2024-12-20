import "dart:ui";

import "package:flutter/material.dart";

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: QuizApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State {
  List<Map> allQuestions = [
    {
      "question": "Who is the Opener of Indian Cricket Team?",
      "options": [
        "Steve Smith",
        "Rohit Sharma",
        "Virat Kohli",
        "Shikhar Dhawan"
      ],
      "answerIndex": 1
    },
    {
      "question": "Who  the Opener of Indian Cricket Team?",
      "options": [
        "Steve Smith",
        "Rohit Sharma",
        "Virat Kohli",
        "Shikhar Dhawan"
      ],
      "answerIndex": 1
    },
    {
      "question": "Who is  Opener of Indian Cricket Team?",
      "options": [
        "Steve Smith",
        "Rohit Sharma",
        "Virat Kohli",
        "Shikhar Dhawan"
      ],
      "answerIndex": 1
    },
    {
      "question": "Who is the  of Indian Cricket Team?",
      "options": [
        "Steve Smith",
        "Rohit Sharma",
        "Virat Kohli",
        "Shikhar Dhawan"
      ],
      "answerIndex": 1
    },
    {
      "question": "Who is the Opener of Indian Cricket Team?",
      "options": [
        "Steve Smith",
        "Rohit Sharma",
        "Virat Kohli",
        "Shikhar Dhawan"
      ],
      "answerIndex": 1
    }
  ];
  bool questionScreen = true;
  int questionIndex = 0;

  Scaffold isQuestionScreen() {
    if (questionScreen == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.orange,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Questions: ",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text("${questionIndex + 1}/${allQuestions.length}",
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ))
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
                width: 380,
                height: 50,
                child: Text(
                  allQuestions[questionIndex]["question"],
                  style: const TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w400,
                  ),
                )),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "A.${allQuestions[questionIndex]["options"][1]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "B.${allQuestions[questionIndex]["options"][1]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "C.${allQuestions[questionIndex]["options"][1]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "D.${allQuestions[questionIndex]["options"][1]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              questionIndex++;
              setState(() {});
            },
            backgroundColor: Colors.blue,
            child: const Icon(
              Icons.forward,
              color: Colors.orange,
            )),
      );
    } else {
      return const Scaffold();
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }
}
