import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp001/SignUpPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormFieldState> _phoneKey = GlobalKey<FormFieldState>();
  final GlobalKey<FormFieldState> _passwordKey = GlobalKey<FormFieldState>();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool phoneNumVerification(String str) {
    if (str.length != 10) {
      return false;
    } else {
      for (int i = 0; i < str.length; i++) {
        int ascii = str.codeUnitAt(i);
        if (ascii < 48 || ascii > 57) {
          return false;
        }
      }
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 50),
                    child: Text("Log In ",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w800,
                          fontSize: 30,
                        ))),
                Container(
                  margin: const EdgeInsets.only(left: 20, top: 30, right: 20),
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.05),
                        blurRadius: 20,
                        offset: Offset(0, 8))
                  ]),
                  child: TextFormField(
                      autofocus: false,
                      key: _phoneKey,
                      controller: _phoneController,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(10),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter a Mobile Number";
                        } else if (!phoneNumVerification(value)) {
                          return "Please enter a valid phone number";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.call_end_outlined),
                          prefixIconColor:
                              const Color.fromRGBO(164, 164, 164, 1),
                          hintText: "Mobile Number",
                          hintStyle: GoogleFonts.inter(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(164, 164, 164, 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  width: 1,
                                  color: Color.fromRGBO(204, 211, 196, 1))),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  width: 1,
                                  color: Color.fromRGBO(204, 211, 196, 1))))),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, top: 50, right: 20),
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.05),
                        blurRadius: 20,
                        offset: Offset(0, 8))
                  ]),
                  child: TextFormField(
                      autofocus: false,
                      key: _passwordKey,
                      controller: _passwordController,
                      obscureText: true, // Obscures password text
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter a password";
                        } else if (value.length < 6) {
                          return "Password must be at least 6 characters";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock_outline),
                          prefixIconColor:
                              const Color.fromRGBO(164, 164, 164, 1),
                          suffixIcon: const Icon(Icons.visibility_off_sharp),
                          hintText: "Password",
                          hintStyle: GoogleFonts.inter(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(164, 164, 164, 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  width: 1,
                                  color: Color.fromRGBO(204, 211, 196, 1))),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  width: 1,
                                  color: Color.fromRGBO(204, 211, 196, 1))))),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const SignUpPage();
                    }));

                    if (_phoneKey.currentState!.validate() &&
                        _passwordKey.currentState!.validate()) {
                      // Perform login action here
                      print('Valid form');
                    } else {
                      print('Invalid form');
                    }
                  },
                  child: Container(
                    width: 365,
                    height: 50,
                    margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.15),
                          blurRadius: 40,
                          offset: Offset(0, 20),
                        )
                      ],
                      gradient: const LinearGradient(
                        colors: [Colors.black, Colors.black87],
                        stops: [0, 0.9],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Log in",
                        style: GoogleFonts.rubik(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const SignUpPage();
                      }));
                    },
                    child: Container(
                        height: 30,
                        width: 70,
                        margin:
                            const EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        )))
              ],
            ))));
  }
}
