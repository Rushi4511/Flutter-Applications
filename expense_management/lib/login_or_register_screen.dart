import 'package:expense_management/expense_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'utlilites.dart';

class LoginRegistration extends StatefulWidget {
  const LoginRegistration({super.key});

  @override
  State createState() => _LoginRegistrationState();
}

class _LoginRegistrationState extends State {
  bool isLogin = false;
  List<Verification> loginList = [
    Verification(
        name: 'Username',
        textEditingController: TextEditingController(),
        globalKey: GlobalKey<FormFieldState>()),
    Verification(
        name: 'Password',
        textEditingController: TextEditingController(),
        globalKey: GlobalKey<FormFieldState>())
  ];
  List<Verification> registrationList = [
    Verification(
        name: 'Name',
        textEditingController: TextEditingController(),
        globalKey: GlobalKey<FormFieldState>()),
    Verification(
        name: 'Username',
        textEditingController: TextEditingController(),
        globalKey: GlobalKey<FormFieldState>()),
    Verification(
        name: 'Password',
        textEditingController: TextEditingController(),
        globalKey: GlobalKey<FormFieldState>()),
    Verification(
        name: 'Conform Password',
        textEditingController: TextEditingController(),
        globalKey: GlobalKey<FormFieldState>())
  ];

  @override
  Widget build(BuildContext context) {
    List<Verification> verfiList = [];
    if (isLogin) {
      verfiList = loginList;
    } else {
      verfiList = registrationList;
    }

    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              getImage(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.055,
              ),
              Row(
                children: [
                  Text(
                    verfiList.length == 4
                        ? 'Create your Account'
                        : 'Login to your Account',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                ],
              ),
              SizedBox(
                height: verfiList.length == 4 ? 295 : 155,
                width: double.infinity,
                child: ListView.separated(
                  itemCount: verfiList.length,
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 22,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 49,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(0, 3),
                                blurRadius: 10,
                                color: Color.fromRGBO(0, 0, 0, 0.15))
                          ]),
                      child: TextFormField(
                        controller: verfiList[index].textEditingController,
                        key: verfiList[index].globalKey,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '      ${verfiList[index].name}',
                          hintStyle: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ExpenseManagement(),
                      ));
                },
                child: Container(
                  height: 49,
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.07),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(14, 161, 125, 1),
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Text(
                      verfiList.length == 2 ? 'Sigin In' : 'Sigin Up',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: isLogin
                        ? MediaQuery.of(context).size.height * 0.3160
                        : MediaQuery.of(context).size.height * 0.15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      registrationList.length == 2
                          ? 'Don’t have an account?'
                          : 'Already have an account?',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        isLogin = !isLogin;
                        setState(() {});
                      },
                      child: Text(
                          (registrationList.length == 2)
                              ? 'Sigin Up'
                              : 'Sigin In',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color.fromRGBO(14, 161, 125, 1))),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
