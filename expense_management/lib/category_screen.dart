import 'package:expense_management/expense_screen.dart';
import 'package:expense_management/mydraw_screen.dart';
import 'package:expense_management/utlilites.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryScrean extends StatefulWidget {
  const CategoryScrean({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CategoryState();
  }
}

class _CategoryState extends State {
  List<Expense> transactionInputList = [
    Expense(
      title: 'Food',
      desciption: '',
      expense: 0,
      date: '',
      imgPath: 'images/food.png',
      color: Colors.yellow,
    ),
    Expense(
      title: 'Medicine',
      desciption: '',
      expense: 0,
      date: '',
      imgPath: 'images/medicine.png',
      color: Colors.green,
    ),
    Expense(
      title: 'Fuel',
      desciption: '',
      expense: 0,
      date: '',
      imgPath: 'images/fuel.png',
      color: Colors.red,
    ),
    Expense(
      title: 'Graph',
      desciption: '',
      expense: 0,
      date: '',
      imgPath: 'images/graph.png',
      color: const Color.fromARGB(255, 170, 116, 116),
    ),
  ];
  List<CatergoryInput> catergoryInputList = [
    CatergoryInput(
        name: 'URL',
        hintText: 'Enter URL',
        textEditingController: TextEditingController()),
    CatergoryInput(
        name: 'Category',
        hintText: 'Enter category name',
        textEditingController: TextEditingController())
  ];
  displayAlert() {
    return showDialog(
      context: context,
      //barrierColor: Color.fromRGBO(0, 0, 0, 0.10),
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: Text('Delete Category',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              )),
          titlePadding: const EdgeInsets.only(left: 111, top: 19),
          content: Text(
            'Are you sure you want to delete the selected category?',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                height: 35,
                width: 100,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(14, 161, 125, 1),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(1, 2),
                          blurRadius: 8,
                          color: Color.fromRGBO(0, 0, 0, 0.15))
                    ]),
                alignment: Alignment.center,
                child: Text(
                  'Delete',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.white),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                height: 35,
                width: 100,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(140, 128, 128, 0.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment.center,
                child: Text(
                  'Cancel',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }

  displayBottomShit({Expense? obj}) {
    if (obj == null) {
      for (int i = 0; i < catergoryInputList.length; i++) {
        catergoryInputList[i].textEditingController.clear();
      }
    } else {
      catergoryInputList[0].textEditingController.text = obj.title;
      catergoryInputList[1].textEditingController.text = obj.imgPath;
    }
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Container(
          width: double.infinity,
          padding: MediaQuery.of(context).viewInsets,
          child: SizedBox(
            height: 400,
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      height: 74,
                      width: 74,
                      margin: const EdgeInsets.only(top: 30),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(140, 128, 128, 0.2)),
                      child: const Icon(
                        Icons.image,
                        size: 28,
                        color: Color.fromRGBO(125, 125, 125, 1),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text('Add',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        )),
                  ],
                ),
                Container(
                  height: 160,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 20,
                      );
                    },
                    itemCount: catergoryInputList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(catergoryInputList[index].name,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              )),
                          SizedBox(
                            height: 45,
                            child: TextFormField(
                              controller: catergoryInputList[index]
                                  .textEditingController,
                              decoration: InputDecoration(
                                  hintText:
                                      "  ${catergoryInputList[index].hintText}",
                                  hintStyle: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: const BorderSide(
                                          width: 1,
                                          color: Color.fromRGBO(
                                              191, 189, 189, 1)))),
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ),
                Container(
                  height: 40,
                  width: 123,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(1, 2),
                            blurRadius: 4,
                            color: Color.fromRGBO(0, 0, 0, 0.2))
                      ],
                      borderRadius: BorderRadius.circular(67),
                      color: const Color.fromRGBO(14, 161, 125, 1)),
                  alignment: Alignment.center,
                  child: Text('Add',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.white)),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories',
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 16)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: GridView.builder(
          padding: const EdgeInsets.only(top: 10),
          itemCount: transactionInputList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1.034,
              crossAxisCount: 2,
              mainAxisSpacing: 24,
              crossAxisSpacing: 24),
          itemBuilder: (context, index) {
            return GestureDetector(
              onLongPress: () async {
                await displayAlert();
              },
              onTap: () {
                displayBottomShit(obj: transactionInputList[index]);
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(1, 2),
                          spreadRadius: 0,
                          blurRadius: 8,
                          color: Color.fromRGBO(0, 0, 0, 0.15)),
                    ],
                    borderRadius: BorderRadius.circular(14)),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 74,
                      width: 74,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: transactionInputList[index].color),
                      child: Image.asset(
                        transactionInputList[index].imgPath,
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(transactionInputList[index].title,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500, fontSize: 16))
                  ],
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.white,
          shape: const ContinuousRectangleBorder(
              side: BorderSide(width: 2, color: Colors.white),
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(67), right: Radius.circular(67))),
          onPressed: () {
            displayBottomShit();
          },
          label: Row(
            children: [
              Container(
                height: 36,
                width: 36,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(14, 161, 125, 1)),
                child: const Center(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ),
              Text(
                '   Add Transcation ',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              )
            ],
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      drawer: MyMenu(
        activeIndex: 2,
      ),
    );
  }
}
