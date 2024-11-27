import "package:flutter/material.dart";
import "package:flutter/painting.dart";
import "package:flutter/rendering.dart";
import "package:flutter/widgets.dart";
import "package:google_fonts/google_fonts.dart";
import "package:music_app1/view/galleryPage.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        body: Stack(children: [
          const SizedBox(
            height: double.infinity,
            width: double.infinity,
          ),
          Positioned(
              child: Image.asset(
            "assets/homeBg.png",
            width: double.infinity,
            fit: BoxFit.cover,
          )),
          Positioned(
            top: 350,
            left: 55,
            child: SizedBox(
                height: 152,
                width: 314,
                child: Text("Dancing between The Shadows of rhythm",
                    style: GoogleFonts.inter(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ))),
          ),
          Positioned(
              top: 525,
              left: 60,
              child: GestureDetector(
                  onTap: () {
                    // Navigator.of(context).push(
                    //     MaterialPageRoute(builder: (context) => const GalleryPage()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 46, 0, 1),
                      borderRadius: BorderRadius.circular(19),
                    ),
                    height: 47,
                    width: 261,
                    alignment: Alignment.center,
                    child: Text("Get Started",
                        style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        )),
                  ))),
          Positioned(
              top: 590,
              left: 60,
              child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const GalleryPage()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(19),
                        border: Border.all(
                          width: 1,
                          color: Color.fromRGBO(255, 46, 0, 1),
                        )),
                    height: 47,
                    width: 261,
                    alignment: Alignment.center,
                    child: Text("Continue with Email",
                        style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(255, 46, 0, 1),
                        )),
                  ))),
          Positioned(
              top: 650,
              left: 80,
              child: SizedBox(
                  height: 40,
                  width: 227,
                  child: Text(
                      "by continuing you agree to term of services and  Privacy policy",
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(203, 200, 200, 1),
                      ))))
        ]));
  }
}
