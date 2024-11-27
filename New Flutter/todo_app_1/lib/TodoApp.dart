import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State createState() => _TodoAppState();
}

class _TodoAppState extends State {
  TextEditingController titleContoller = TextEditingController();
  TextEditingController descriptionContoller = TextEditingController();
  TextEditingController dateContoller = TextEditingController();

  void showBottomSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        isDismissible: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Create Task",
                  style: GoogleFonts.quicksand(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Title",
                          style: GoogleFonts.quicksand(
                            color: const Color.fromRGBO(0, 139, 148, 1),
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          )),
                      const SizedBox(
                        height: 3,
                      ),

                      TextField(
                          controller: titleContoller,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: const BorderSide(
                                    color: Color.fromRGBO(0, 139, 148, 1),
                                  )),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.purpleAccent,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ))),
                      const SizedBox(
                        height: 12,
                      ),

                      //Description
                      Text("Title",
                          style: GoogleFonts.quicksand(
                            color: const Color.fromRGBO(0, 139, 148, 1),
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          )),
                      const SizedBox(
                        height: 3,
                      ),

                      TextField(
                          controller: descriptionContoller,
                          maxLines: 4,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: const BorderSide(
                                    color: Color.fromRGBO(0, 139, 148, 1),
                                  )),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.purpleAccent,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ))),
                      const SizedBox(
                        height: 12,
                      ),

                      //Date
                      Text("Date",
                          style: GoogleFonts.quicksand(
                            color: const Color.fromRGBO(0, 139, 148, 1),
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          )),
                      const SizedBox(
                        height: 3,
                      ),
                      TextField(
                        controller: dateContoller,
                        readOnly: true,
                        decoration: InputDecoration(
                          suffixIcon: const Icon(Icons.date_range_rounded),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(0, 139, 148, 1),
                              )),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.purpleAccent,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
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
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 4),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              backgroundColor:
                                  const Color.fromRGBO(0, 139, 148, 1),
                            ),
                            onPressed: () {},
                            child: Text("Submit",
                                style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        centerTitle: true,
        title: Text("TODO APP",
            style: GoogleFonts.quicksand(
              fontWeight: FontWeight.w700,
              fontSize: 25,
            )),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 16,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 10),
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    blurRadius: 10,
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Image.network("src"),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Take Notes",
                                style: GoogleFonts.quicksand(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    color: const Color.fromRGBO(0, 0, 0, 1))),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Take a notes of every app you create Take notes of every app you create ",
                              style: GoogleFonts.quicksand(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(84, 84, 84, 1)),
                            )
                          ],
                        ),
                      )
                    ]),
                    const SizedBox(
                      height: 14.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        children: [
                          Text("10 July 2023",
                              style: GoogleFonts.quicksand(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color:
                                      const Color.fromRGBO(132, 132, 132, 1))),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                  onTap: () {},
                                  child: const Icon(Icons.edit_outlined,
                                      color: Color.fromRGBO(0, 139, 148, 1))),
                              const SizedBox(width: 10),
                              GestureDetector(
                                  onTap: () {},
                                  child: const Icon(Icons.delete_outlined,
                                      color: Color.fromRGBO(0, 139, 148, 1)))
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showBottomSheet();
          },
          child: const Icon(
            size: 40,
            Icons.add,
            color: Colors.white,
          )),
    );
  }
}
