import 'package:expense_management/category_screen.dart';
import 'package:expense_management/expense_screen.dart';
import 'package:expense_management/graph_screen.dart';
import 'package:expense_management/trash_screen.dart';
import 'package:expense_management/utlilites.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyMenu extends StatefulWidget {
  final int activeIndex;
  MyMenu({super.key, required this.activeIndex});
  @override
  State createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> {
  //MyMenu({super.key, required this.activeIndex});

  List<MenuItem> menuItemList = [
    MenuItem(name: 'Transcation', imgPath: 'images/transImg.png'),
    MenuItem(name: 'Graphs', imgPath: 'images/graph.png'),
    MenuItem(name: 'Category', imgPath: 'images/categarory.png'),
    MenuItem(name: 'Trash', imgPath: 'images/trash.png'),
    MenuItem(name: 'About Us', imgPath: 'images/about.png'),
  ];
  //const MyMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 22, left: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Expense Manager',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, fontSize: 16)),
                Text('Saves all your Transactions',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 10)),
              ],
            ),
          ),
          Expanded(
              child: ListView.separated(
            itemCount: menuItemList.length,
            separatorBuilder: (context, index) => const SizedBox(
              height: 20,
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  if (index == 0) {
                    if (index == widget.activeIndex) {
                      Navigator.of(context).pop();
                    } else {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ExpenseManagement(),
                      ));
                    }
                  } else if (index == 1) {
                    if (index == widget.activeIndex) {
                      Navigator.of(context).pop();
                    } else {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const GraphScrean(),
                      ));
                    }
                  } else if (index == 2) {
                    if (index == widget.activeIndex) {
                      Navigator.of(context).pop();
                    } else {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const CategoryScrean(),
                      ));
                    }
                  } else if (index == 3) {
                    if (index == widget.activeIndex) {
                      Navigator.of(context).pop();
                    } else {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Trash(),
                      ));
                    }
                  }
                },
                child: Container(
                  height: 50,
                  width: 184,
                  margin: const EdgeInsets.only(right: 64),
                  padding: const EdgeInsets.only(left: 20),
                  decoration: (widget.activeIndex == index)
                      ? const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          color: Color.fromRGBO(14, 161, 125, 0.15))
                      : null,
                  child: Row(
                    children: [
                      Image.asset(
                        menuItemList[index].imgPath,
                        height: 17,
                        width: 18,
                      ),
                      Text("  ${menuItemList[index].name}",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: (widget.activeIndex == index)
                                  ? const Color.fromRGBO(14, 161, 125, 1)
                                  : null)),
                    ],
                  ),
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
