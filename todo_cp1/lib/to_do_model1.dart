import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "package:flutter/widgets.dart";
import "to_do_model_class.dart";
import "package:google_fonts/google_fonts.dart";
import 'package:intl/intl.dart';

class ToDoApp extends StatefulWidget {
  const ToDoApp({super.key});
  @override
  State<ToDoApp> createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  TextEditingController dateController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  List<ToDoModelClass> todoList = [
    ToDoModelClass(
      title: "Take Notes",
      description: "The detailed NOtes of Lectures Should be Added ",
      date: "19-11-2023",
    ),
    ToDoModelClass(
      title: "Take Notes",
      description: "The detailed NOtes of Lectures Should be Added ",
      date: "19-11-2023",
    ),
  ]; //lIst of Tasks

  List<Color> listOfColors = [
    Colors.blueAccent,
    Colors.redAccent,
    Colors.lightGreen,
    Colors.yellow,
  ];
  void editTask(ToDoModelClass toDoModelObj) {
    titleController.text = toDoModelObj.title;
    descriptionController.text = toDoModelObj.description;
    dateController.text = toDoModelObj.date;
    showBottomSheet(true, toDoModelObj);
  }

  void removeTask(ToDoModelClass toDoModelObj) {
    setState(() {
      todoList.remove(toDoModelObj);
    });
  }

  void clearController() {
    titleController.clear();
    descriptionController.clear();
    dateController.clear();
  }

  void dispose() {
    super.dispose();
    titleController.dispose();
    descriptionController.dispose();
    dateController.dispose();
  }

  void submit(bool doEdit, [ToDoModelClass? toDoModelObj]) {
    if (titleController.text.trim().isNotEmpty &&
        descriptionController.text.trim().isNotEmpty &&
        dateController.text.trim().isNotEmpty) {
      if (!doEdit) {
        setState(() {
          todoList.add(ToDoModelClass(
            title: titleController.text.trim(),
            description: descriptionController.text.trim(),
            date: dateController.text.trim(),
          ));
        });
      } else {
        toDoModelObj!.date = dateController.text.trim();
        toDoModelObj.description = descriptionController.text.trim();
        toDoModelObj.title = titleController.text.trim();
      }
    }
    clearController();
  }

  void showBottomSheet(bool doEdit, [ToDoModelClass? toDoModelObj]) {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        )),
        isDismissible: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    doEdit ? "EditTask" : "CreateTask",
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Title",
                            style: GoogleFonts.quicksand(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            )),
                        const SizedBox(
                          height: 3,
                        ),
                        TextField(
                            controller: titleController,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                  )),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: const BorderSide(
                                    color: Colors.purpleAccent,
                                  )),
                            )),
                        const SizedBox(
                          height: 12,
                        ),
                        Text("Description",
                            style: GoogleFonts.quicksand(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            )),
                        const SizedBox(
                          height: 3,
                        ),
                        TextField(
                            controller: descriptionController,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                  )),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: const BorderSide(
                                    color: Colors.purpleAccent,
                                  )),
                            )),
                        const SizedBox(
                          height: 12,
                        ),
                        Text("Date",
                            style: GoogleFonts.quicksand(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            )),
                        const SizedBox(
                          height: 3,
                        ),
                        TextField(
                          controller: dateController,
                          decoration: InputDecoration(
                            suffixIcon: const Icon(Icons.date_range_rounded),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                )),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: Colors.purpleAccent,
                                )),
                          ),
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2101),
                            );
                            if (pickedDate != null) {
                              setState(() {
                                dateController.text =
                                    DateFormat('yyyy-MM-dd').format(pickedDate);
                              });
                            }
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: ElevatedButton(
                              onPressed: () {
                                doEdit
                                    ? submit(doEdit, toDoModelObj)
                                    : submit(doEdit);
                                Navigator.of(context).pop();
                              },
                              child: Text(doEdit ? "Save Changes" : "Submit",
                                  style: GoogleFonts.inter(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20))),
                        ),
                        const SizedBox(
                          height: 30,
                        )
                      ])
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: Text(
            "To-Do App",
            style: GoogleFonts.quicksand(
              fontWeight: FontWeight.w700,
              fontSize: 25,
            ),
          )),
      body: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 16,
                ),
                child: Container(
                    decoration: BoxDecoration(
                      color: listOfColors[index % listOfColors.length],
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(0, 10),
                            color: Colors.grey,
                            blurRadius: 10)
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.all(100),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.network(
                                    "https://play-lh.googleusercontent.com/H-rHB-oPCZo3gLz4fVU87UVDYCFdkzc2_WVMBZKsBgSN6F2jM-wuLXAY3S3mJhJEdms-",
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                      Text(todoList[index].title,
                                          style: GoogleFonts.quicksand(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.black)),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(todoList[index].description,
                                          style: GoogleFonts.quicksand(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ))
                                    ])),
                              ],
                            ),
                            const SizedBox(
                              height: 14.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10.0,
                                right: 10.0,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    todoList[index].date,
                                    style: GoogleFonts.quicksand(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const Spacer(),
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            editTask(todoList[index]);
                                          },
                                          child: const Icon(
                                            Icons.edit_outlined,
                                            color: Colors.black,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            removeTask(todoList[index]);
                                          },
                                          child: const Icon(
                                            Icons.delete_outline,
                                            color: Colors.black,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                      ])
                                ],
                              ),
                            )
                          ],
                        ))));
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          clearController();
          showBottomSheet(false);
        },
        child: const Icon(
          size: 50,
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
