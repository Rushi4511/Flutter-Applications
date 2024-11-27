import 'package:flutter/material.dart';

Widget getImage() {
  return Image.asset('images/wallet.png',
      height: 69.76, width: 58.82, fit: BoxFit.cover);
}

class Expense {
  String title;
  String desciption;
  int expense;
  String date;
  Color color;
  String imgPath;
  Expense(
      {required this.title,
      required this.color,
      required this.desciption,
      required this.expense,
      required this.date,
      required this.imgPath});
}

class TransactionInput {
  String name;

  TransactionInput({required this.name});
}

class Verification {
  String name;
  TextEditingController textEditingController;
  GlobalKey<FormFieldState> globalKey;
  Verification(
      {required this.name,
      required this.textEditingController,
      required this.globalKey});
}

class MenuItem {
  String name;
  String imgPath;
  MenuItem({required this.name, required this.imgPath});
}
