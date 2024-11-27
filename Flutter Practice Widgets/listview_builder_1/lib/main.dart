import "package:flutter/material.dart";

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController bottomSheetController = TextEditingController();
  TextEditingController bottomSheetController1 = TextEditingController();
  String? myName;

  TextEditingController companyController = TextEditingController();
  String? CName;

  List<String> playerslist = [];
  List<String> companyList = [];

  void openBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          children: [
            const Text(
              "BottomSheet Demo",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              height: 200,
              color: Colors.amber,
            )
          ],
        );
        // return Padding(
        //   padding: const EdgeInsets.all(16.0),
        //   child: Column(
        //     mainAxisSize: MainAxisSize.min,
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       const Text(
        //         "ADD TASK",
        //         style: TextStyle(
        //           fontSize: 18,
        //           fontWeight: FontWeight.bold,
        //         ),
        //       ),
        //       const SizedBox(height: 10),
        //       TextField(
        //         controller: bottomSheetController,
        //         style: const TextStyle(
        //           fontSize: 16,
        //         ),
        //         decoration: const InputDecoration(
        //           hintText: "Enter name",
        //           border: OutlineInputBorder(),
        //           hintStyle: TextStyle(
        //             fontSize: 14,
        //             color: Colors.grey,
        //           ),
        //         ),
        //       ),
        //       const SizedBox(height: 20),
        //       const Text(
        //         "ADD DESCRIPTION",
        //         style: TextStyle(
        //           fontSize: 18,
        //           fontWeight: FontWeight.bold,
        //         ),
        //       ),
        //       const SizedBox(height: 10),
        //       TextField(
        //         controller: bottomSheetController1,
        //         style: const TextStyle(
        //           fontSize: 16,
        //         ),
        //         decoration: const InputDecoration(
        //           hintText: "Enter description",
        //           border: OutlineInputBorder(),
        //           hintStyle: TextStyle(
        //             fontSize: 14,
        //             color: Colors.grey,
        //           ),
        //         ),
        //       ),
        //       const SizedBox(height: 20),
        //       Center(
        //         child: ElevatedButton(
        //           onPressed: () {
        //             // Add functionality here
        //             String taskName = nameController.text.trim();
        //           },
        //           child: const Text(
        //             "Submit",
        //             style: TextStyle(
        //               fontSize: 16,
        //               fontWeight: FontWeight.bold,
        //             ),
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("TextField ListView Demo",
            style: TextStyle(
              fontSize: 30,
            )),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: nameController,
              style: const TextStyle(
                fontSize: 30,
              ),
              decoration: const InputDecoration(
                hintText: "Employee Name",
                hintStyle: TextStyle(
                  fontSize: 25,
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(),
              ),
              onChanged: (String val) {
                print("Value: $val");
              },
              onEditingComplete: () {
                print("Editing Completed");
              },
              onSubmitted: (value) {
                print("Value Submitted: $value");
              },
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: companyController,
              style: const TextStyle(
                fontSize: 30,
              ),
              decoration: const InputDecoration(
                hintText: "Dream Company",
                hintStyle: TextStyle(
                  fontSize: 25,
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(),
              ),
              onChanged: (String val) {
                print("Value: $val");
              },
              onEditingComplete: () {
                print("Editing Completed");
              },
              onSubmitted: (value) {
                print("Value Submitted: $value");
              },
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                print("Add Data");

                myName = nameController.text.trim();
                print("My Name :$myName");
                if (myName != "") {
                  playerslist.add(myName!);
                  print("PlayersList length : ${playerslist.length}");
                  nameController.clear();
                  setState(() {});
                }

                CName = companyController.text.trim();
                print("My Name :$myName");
                if (CName != "") {
                  companyList.add(CName!);
                  print("PlayersList length : ${companyList.length}");
                  companyController.clear();
                  setState(() {});
                }
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text(
                  "Add Data",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ListView.builder(
              itemCount: playerslist.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Text("Name : ${playerslist[index]}",
                        style: const TextStyle(
                          fontSize: 25,
                        )),
                    const SizedBox(
                      height: 5,
                    ),
                    Text("Name : ${companyList[index]}",
                        style: const TextStyle(
                          fontSize: 25,
                        )),
                  ],
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          openBottomSheet();
        },
        child: Icon(Icons.add),
      ),
    ));
  }
}
