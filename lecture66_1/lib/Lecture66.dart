import "package:flutter/material.dart";

class QuizUI extends StatefulWidget {
  const QuizUI({super.key});

  @override
  State createState() => _QuizUIState();
}

class _QuizUIState extends State {
  int queCount = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: const Text("Quiz App",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: Colors.orange,
              ))),
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ),
            Text("Questions:",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                )),
            const SizedBox(
              width: 2,
            ),
            Text("$queCount/10"),
          ],
        ),
        const SizedBox(
          child: Text(
            "Who is your Favourite Player",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        ElevatedButton(onPressed: () {}, child: const Text("A. Virat Kohli")),
        const SizedBox(
          height: 4,
        ),
        ElevatedButton(onPressed: () {}, child: const Text("B. Rohit Sharma")),
        const SizedBox(
          height: 4,
        ),
        ElevatedButton(onPressed: () {}, child: const Text("C. M.S. Dhoni")),
        const SizedBox(
          height: 4,
        ),
        ElevatedButton(
            onPressed: () {}, child: const Text("D. Sachin Tendulkar"))
      ]),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              if (queCount < 10) {
                queCount++;
              }
            });
            ;
          },
          child: const Text("Next")),
    );
  }
}
