import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State createState() => _QuizApp();
}

class _QuizApp extends State {
  int queNum = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Quiz App",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 189, 117, 202),
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
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15)),
              Text(" $queNum /10 ",
                  style: const TextStyle(
                      fontWeight: FontWeight.w300, fontSize: 15))
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const SizedBox(
            child: Text("What is your favourite player?",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Option 1",
                style: TextStyle(fontWeight: FontWeight.w400)),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Option 2",
                style: TextStyle(fontWeight: FontWeight.w400)),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Option 3",
                style: TextStyle(fontWeight: FontWeight.w400)),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Option 4",
                style: TextStyle(fontWeight: FontWeight.w400)),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (queNum < 10) {
            setState(() {
              queNum++;
            });
          }
        },
        child: const Icon(Icons.arrow_right_alt_rounded),
      ),
    );
  }
}
