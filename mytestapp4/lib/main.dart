import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: PalindromeChecker());
  }
}

class PalindromeChecker extends StatefulWidget {
  const PalindromeChecker({super.key});

  @override
  State<PalindromeChecker> createState() => PalindromeState();
}

class PalindromeState extends State<PalindromeChecker> {
  List<int> intNums = [145, 1234321, 55664, 40585, 1634, 323];
  int _countP = 0, _countA = 0, _countAm = 0;

  void _countPalindrome() {
    if (_countP == 0) {
      for (var element in intNums) {
        var temp = element;
        int rev = 0;
        while (temp != 0) {
          rev = rev * 10 + temp % 10;
          temp = temp ~/ 10;
        }
        if (rev == element) {
          setState(() {
            _countP++;
          });
        }
      }
    } else {
      return;
    }
  }

  void countStrong() {
    if (_countA == 0) {
      for (var element in intNums) {
        var temp = element;
        int sum = 0;
        while (temp != 0) {
          int a = temp % 10;
          int fact = 1;
          for (int i = 1; i <= a; i++) {
            fact *= i;
          }
          sum = sum + fact;
          temp = temp ~/ 10;
        }
        if (sum == element) {
          setState(() {
            _countA++;
          });
        }
      }
    } else {
      return;
    }
  }

  void countAmstrong() {
    if (_countAm == 0) {
      for (var element in intNums) {
        int cn = 0;
        var val = element;
        while (val != 0) {
          cn++;
          val = val ~/ 10;
        }
        var temp = element;
        int sum = 0;
        while (temp != 0) {
          int a = temp % 10;
          int mul = 1;
          for (int i = 0; i < cn; i++) {
            mul *= a;
          }
          sum = sum + mul;
          temp = temp ~/ 10;
        }
        if (sum == element) {
          setState(() {
            _countAm++;
          });
        }
      }
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Number Checker App"),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Press Button to print count of Palindrome number"),
                const SizedBox(
                  height: 20,
                ),
                Text("$_countP"),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: _countPalindrome, child: Text("Palindrome"))
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Press Button to print count of Strong number"),
                const SizedBox(
                  height: 20,
                ),
                Text("$_countA"),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: countStrong, child: const Text("Strong"))
              ],
            ),
            const SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Press Button to print count of AmStrong number"),
                const SizedBox(
                  height: 20,
                ),
                Text("$_countAm"),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: countAmstrong, child: const Text("AmStrong"))
              ],
            )
          ]),
        ));
  }
}
