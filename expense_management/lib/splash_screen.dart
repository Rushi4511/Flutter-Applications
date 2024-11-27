import 'package:expense_management/login_or_register_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State createState() => _HomeState();
}

class _HomeState extends State {
  Widget getAppIcon(
      {required double contHeight,
      required double contWidth,
      required double imgHeight,
      required double imgWidth}) {
    return Container(
      height: contHeight,
      width: contWidth,
      decoration: const BoxDecoration(
          shape: BoxShape.circle, color: Color.fromRGBO(234, 238, 235, 1)),
      child: Image.asset(
        'images/wallet.png',
        height: imgHeight,
        width: imgWidth,
        //fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            getAppIcon(
                contHeight: 144,
                contWidth: 144,
                imgHeight: 58.82,
                imgWidth: 46.38),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.12),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginRegistration(),
                      ));
                },
                child: Text(
                  'Expense Manager',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
