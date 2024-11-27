import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";
// import 'package:music_app/view/gallaryPage.dart';
// import 'package:music_app/view/playerPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
      body: Stack(children: [
        const SizedBox(
          height: double.infinity,
          width: double.infinity,
        ),
        Positioned(
          child: Image.asset('Fitness.png',
              width: double.infinity, fit: BoxFit.cover),
        ),
        Positioned(
            top: 330,
            left: 30,
            child: SizedBox(
                height: 152,
                width: 314,
                child: Text(
                  'Dancing between The shadows Of rhythm ',
                  style: GoogleFonts.inter(
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ))),
        Positioned(
            top: 500,
            left: 35,
            child: Column(
              children: [
                Positioned(
                  top: 565,
                  left: 50,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 57,
                      width: 291,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            // BoxShadow(
                            //     offset: Offset(80, 0),
                            //     color: Color.fromRGBO(19, 19, 19, 1),
                            //     blurRadius: 25,
                            //     spreadRadius: 5),
                            // BoxShadow(
                            //     offset: Offset(-80, 0),
                            //     color: Color.fromRGBO(19, 19, 19, 1),
                            //     blurRadius: 25,
                            //     spreadRadius: 5)
                          ],
                          borderRadius: BorderRadius.circular(19),
                          color: const Color.fromRGBO(255, 46, 0, 1)),
                      child: Text('Get started',
                          style: GoogleFonts.inter(
                              fontSize: 20, fontWeight: FontWeight.w600)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Positioned(
                    top: 674,
                    left: 0,
                    child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 57,
                          width: 291,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(19),
                              border: Border.all(
                                  width: 1,
                                  color: const Color.fromRGBO(255, 46, 0, 1))),
                          child: Text('Continue with Email',
                              style: GoogleFonts.inter(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(255, 46, 0, 1))),
                        ))),
                const SizedBox(
                  height: 10,
                ),
                Positioned(
                  top: 725,
                  left: 60,
                  child: SizedBox(
                    height: 44,
                    width: 227,
                    child: Text(
                        'by continuing you agree to term of services and  Privacy policy',
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(203, 200, 200, 1))),
                  ),
                )
              ],
            )),

        // Positioned(
        //   top: 565,
        //   left: 50,
        //   child: GestureDetector(
        //     onTap: () {
        //       // Navigator.of(context).push(MaterialPageRoute(
        //       //     builder: (context) => const GallaryPage()));
        //     },
        //     child: Container(
        //       height: 57,
        //       width: 291,
        //       alignment: Alignment.center,
        //       decoration: BoxDecoration(
        //           boxShadow: const [
        //             BoxShadow(
        //                 offset: Offset(80, 0),
        //                 color: Color.fromRGBO(19, 19, 19, 1),
        //                 blurRadius: 25,
        //                 spreadRadius: 5),
        //             BoxShadow(
        //                 offset: Offset(-80, 0),
        //                 color: Color.fromRGBO(19, 19, 19, 1),
        //                 blurRadius: 25,
        //                 spreadRadius: 5)
        //           ],
        //           borderRadius: BorderRadius.circular(19),
        //           color: const Color.fromRGBO(255, 46, 0, 1)),
        //       child: Text('Get started',
        //           style: GoogleFonts.inter(
        //               fontSize: 20, fontWeight: FontWeight.w600)),
        //     ),
        //   ),
        // ),
        // Positioned(
        //   top: 650,
        //   left: 50,
        //   child: GestureDetector(
        //     onTap: () {
        //       // Navigator.of(context)
        //       //     .push(MaterialPageRoute(builder: (context) {
        //       //   return PlayerPage();
        //       // }));
        //     },
        //     child: Container(
        //       height: 57,
        //       width: 291,
        //       alignment: Alignment.center,
        //       decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(19),
        //           border: Border.all(
        //               width: 1, color: const Color.fromRGBO(255, 46, 0, 1))),
        //       child: Text('Continue with Email',
        //           style: GoogleFonts.inter(
        //               fontSize: 20,
        //               fontWeight: FontWeight.w600,
        //               color: const Color.fromRGBO(255, 46, 0, 1))),
        //     ),
        //   ),
        // ),
        // Positioned(
        //   top: 725,
        //   left: 60,
        //   child: SizedBox(
        //     height: 44,
        //     width: 227,
        //     child: Text(
        //         'by continuing you agree to term of services and  Privacy policy',
        //         style: GoogleFonts.inter(
        //             fontSize: 14,
        //             fontWeight: FontWeight.w600,
        //             color: const Color.fromRGBO(203, 200, 200, 1))),
        //   ),
        // )
      ]),
    );
  }
}
