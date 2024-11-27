import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Hindu"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 300,
              color: Colors.orange,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 100,
                    width: 150,
                    color: Colors.white,
                    
                      
                    
                  )
                ],
              ),
            ),
            Container(
              height: 100,
              width: 300,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    ));
  }
}
