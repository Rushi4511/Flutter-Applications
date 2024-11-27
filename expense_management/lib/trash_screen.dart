import 'package:expense_management/mydraw_screen.dart';
import 'package:expense_management/utlilites.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

class Trash extends StatefulWidget {
  const Trash({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TrashState();
  }
}

class _TrashState extends State {
  List<Expense> trashList = [
    Expense(
        title: 'Medicine',
        color: Colors.black,
        desciption:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry jnfjvnj dfvbdfvbd fvbhfdbvhdb vhdvb dhh vd vfvhj',
        expense: 500,
        date: '3 June | 11:50 AM',
        imgPath: ''),
    Expense(
        title: 'Food',
        color: Colors.black,
        desciption:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry jnfjvnj dfvbdfvbd fvbhfdbvhdb vhdvb dhh vd vfvhj',
        expense: 500,
        date: '3 June | 11:50 AM',
        imgPath: ''),
    Expense(
        title: 'Medicine',
        color: Colors.black,
        desciption:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry jnfjvnj dfvbdfvbd fvbhfdbvhdb vhdvb dhh vd vfvhj',
        expense: 500,
        date: '3 June | 11:50 AM',
        imgPath: ''),
    Expense(
        title: 'Food',
        color: Colors.black,
        desciption:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry jnfjvnj dfvbdfvbd fvbhfdbvhdb vhdvb dhh vd vfvhj',
        expense: 500,
        date: '3 June | 11:50 AM',
        imgPath: ''),
    Expense(
        title: 'Medicine',
        color: Colors.black,
        desciption:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry jnfjvnj dfvbdfvbd fvbhfdbvhdb vhdvb dhh vd vfvhj',
        expense: 500,
        date: '3 June | 11:50 AM',
        imgPath: ''),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trash',
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 16)),
      ),
      body: ListView.builder(
        itemCount: trashList.length,
        itemBuilder: (context, index) {
          return Container(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 15),
            // padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: 1, color: Color.fromRGBO(206, 206, 206, 1)))),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 21,
                      width: 21,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(204, 210, 227, 1)),
                      child: Container(
                        width: 11,
                        height: 2,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            trashList[index].title,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                          ReadMoreText(
                            trashList[index].desciption,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                            ),
                            trimCollapsedText: 'more',
                            lessStyle: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 8,
                            ),
                            moreStyle: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 8,
                            ),
                            //textAlign: TextAlign.center,
                            trimLength: 74,
                            trimMode: TrimMode.Length,
                          )
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      padding: const EdgeInsets.only(bottom: 25),
                      child: Text(
                        '${trashList[index].expense}',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    const Spacer(),
                    Text(
                      trashList[index].date,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: const Color.fromRGBO(0, 0, 0, 0.6)),
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
      drawer: MyMenu(activeIndex: 3),
    );
  }
}
