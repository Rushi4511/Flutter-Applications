import 'package:flutter/material.dart';
import 'package:stack_widget_01/menu_drawer_widget.dart';

class StackWidget extends StatefulWidget {
  const StackWidget({super.key});

  @override
  State createState() => _StackWidgetState();
}

class _StackWidgetState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Stack Widget",
          style: TextStyle(fontSize: 30),
        ),
      ),
      drawer: MenuDrawerWidget(),
      // endDrawer: MenuDrawerWidget(),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.holiday_village),
            label: 'Holiday village',
          ),
        ],
      ),
      body: Container(
        color: const Color.fromARGB(255, 120, 95, 186),
        // decoration: BoxDecoration(
        //     borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20))),
        child: Stack(
          children: [
            Container(
              height: 200,
              color: Colors.amber,
            ),
            Center(
              child: GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Deleted successfully")));
                  },
                  child: Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black,
                    ),
                    child: const Center(
                      child: Text("Incubators",
                          style: TextStyle(fontSize: 30, color: Colors.white)),
                    ),
                  )),
            ),
            const Positioned(
              bottom: 30,
              right: 0,
              child: const Text("Core2Web",
                  style: TextStyle(fontSize: 30, color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
