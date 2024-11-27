import "package:flutter/material.dart";

class PaddingAssignment extends StatelessWidget {
  const PaddingAssignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
              "Padding & Margin",
            ),
            backgroundColor: Colors.deepPurple),
        body: Center(
          child: Container(
              color: Colors.blue,
              child: Container(
                height: 250,
                width: 250,
                color: Colors.amber,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(20),
                child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcTyZ_1c8cpO__cCvSa4onogWni2WLZ0vqw7sgMvXKCa6gygDOgWdGrmTH2kuEpCSG3Mwg27W7Db7XbiZmw"),
              )),
        ));
  }
}
