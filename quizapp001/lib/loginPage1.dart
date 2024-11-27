import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWithNum extends StatefulWidget {
  const LoginWithNum({super.key});

  @override
  State createState() => _LoginWithNumState();
}

class _LoginWithNumState extends State {
  final GlobalKey<FormFieldState> _loginKey = GlobalKey<FormFieldState>();
  final TextEditingController _controller = TextEditingController();

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
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 128.2,
                width: 210,
                //alignment: Alignment.topRight,
                //color: Colors.black,
                margin: const EdgeInsets.only(right: 240),
                child: Image.asset(
                  'images/design1.png',
                  height: 128.2,
                  width: 210,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 11),
                child: Text(
                  "Log In",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, top: 30, right: 20),
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.06),
                      blurRadius: 20,
                      offset: Offset(0, 8))
                ]),
                child: TextFormField(
                  autofocus: true,
                  key: _loginKey,
                  controller: _controller,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(10),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter valid phone number";
                    } else if (!phoneNumVerification(value)) {
                      return "Please enter valid phone number";
                    }
                  },
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.call_outlined),
                      prefixIconColor: const Color.fromRGBO(164, 164, 164, 1),
                      hintText: "Mobile Number",
                      hintStyle: GoogleFonts.inter(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(164, 164, 164, 1)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(width: 1, color: Colors.red)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(width: 1, color: Colors.red)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              width: 1,
                              color: Color.fromRGBO(204, 211, 196, 1))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              width: 1,
                              color: Color.fromRGBO(204, 211, 196, 1)))),
                ),
              ),

              //const Spacer(),
              GestureDetector(
                onTap: () {
                  // if (_loginKey.currentState!.validate()) {
                  //   Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => const VerficationPage(),
                  //   ));
                  // }
                },
                child: Container(
                  width: 365,
                  height: 50,
                  margin: const EdgeInsets.only(
                    top: 30,
                  ),
                  //padding: const EdgeInsets.symmetric(horizontal: 92, vertical: 15),
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.15),
                            blurRadius: 40,
                            offset: Offset(0, 20))
                      ],
                      gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(124, 180, 70, 1),
                            Color.fromRGBO(62, 102, 24, 1)
                          ],
                          stops: [
                            0,
                            0.9
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text("Log in",
                        style: GoogleFonts.rubik(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.white)),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 100),
                child: Image.asset(
                  'images/plant2.png',
                  height: 359,
                  width: 359,
                  fit: BoxFit.fill,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
