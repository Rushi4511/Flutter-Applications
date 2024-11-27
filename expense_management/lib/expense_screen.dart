import 'package:expense_management/mydraw_screen.dart';
import 'package:expense_management/utlilites.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpenseManagement extends StatefulWidget {
  const ExpenseManagement({super.key});

  @override
  State<StatefulWidget> createState() => _ExpenseManagementState();
}

class _ExpenseManagementState extends State {
  List<TransactionInput> transactionInputList = [
    TransactionInput(
      name: 'Name',
    ),
    TransactionInput(name: 'Amount'),
    TransactionInput(name: 'Categoty'),
    TransactionInput(name: 'Description')
  ];
  List<Expense> expenseList = [
    Expense(
        title: 'Medicine',
        desciption: 'Lorem Ipsum is simply dummy text of the',
        expense: 300,
        color: Colors.green,
        imgPath: 'images/medicine.png',
        date: '3 June | 11:50 AM'),
    Expense(
        title: 'Food',
        desciption: 'Lorem Ipsum is simply dummy text of the',
        expense: 500,
        color: Colors.yellow,
        imgPath: 'images/food.png',
        date: '3 June | 11:50 AM'),
    Expense(
        title: 'Fuel',
        desciption: 'Lorem Ipsum is simply dummy text of the',
        expense: 500,
        color: Colors.red,
        imgPath: 'images/fuel.png',
        date: '3 June | 11:50 AM'),
  ];
  addTranscation() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (BuildContext context) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Container(
              margin: const EdgeInsets.only(top: 34),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: SizedBox(
                      height: 350,
                      width: double.infinity,
                      child: ListView.separated(
                        itemCount: transactionInputList.length,
                        separatorBuilder: (context, index) => const SizedBox(
                          height: 10,
                        ),
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(transactionInputList[index].name,
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                  )),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 45,
                                child: TextFormField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            borderSide: const BorderSide(
                                                width: 1,
                                                color: Color.fromRGBO(
                                                    191, 189, 189, 1))))),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 123,
                    margin: const EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(67),
                        color: const Color.fromRGBO(14, 161, 125, 1)),
                    child: Center(
                        child: Text('Add',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.white))),
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('April 2024',
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 16)),
        // leading: const Icon(Icons.menu_rounded),
        actions: const [Icon(Icons.search_rounded)],
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: ListView.builder(
          itemCount: expenseList.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Color.fromRGBO(206, 206, 206, 1),
                          width: 0.5))),
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 41,
                        width: 41,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: expenseList[index].color),
                        child: Image.asset(
                          expenseList[index].imgPath,
                          height: 8,
                          width: 8,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              expenseList[index].title,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              expenseList[index].desciption,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 17),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              height: 15,
                              width: 15,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.red),
                              child: Center(
                                child: Container(
                                  width: 8.33,
                                  height: 1.5,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "${expenseList[index].expense}",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Spacer(),
                      Text(expenseList[index].date,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                          ))
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        shape: const ContinuousRectangleBorder(
            side: BorderSide(width: 2, color: Colors.white),
            borderRadius: BorderRadius.horizontal(
                left: Radius.circular(67), right: Radius.circular(67))),
        backgroundColor: Colors.white,
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
        ),
        onPressed: () {
          addTranscation();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      drawer: MyMenu(
        activeIndex: 0,
      ),
    );
  }
}

class CatergoryInput {
  String name;
  String hintText;
  TextEditingController textEditingController;
  CatergoryInput(
      {required this.name,
      required this.hintText,
      required this.textEditingController});
}
