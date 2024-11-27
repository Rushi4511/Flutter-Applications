import "dart:ui";

import "package:dots_indicator/dots_indicator.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:carousel_slider/carousel_slider.dart";
import "package:flutter/painting.dart";
import "package:flutter/rendering.dart";
import "package:flutter/widgets.dart";
import "package:google_fonts/google_fonts.dart";
import "package:music_app1/view/NavBar.dart";
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class GalleryPage extends StatefulWidget {
  const GalleryPage({super.key});

  @override
  State createState() => _GalleryPageState();
}

class PopSinger {
  String imgPath;
  String name;
  String location;
  int year;
  PopSinger({
    required this.imgPath,
    required this.name,
    required this.location,
    required this.year,
  });
}

class Discography {
  String imgPath;
  String name;
  int year;

  Discography({
    required this.imgPath,
    required this.name,
    required this.year,
  });
}

class _GalleryPageState extends State {
  List<Discography> discoList = [
    Discography(
        imgPath: 'assets/deadInSideSong.png', name: 'Dead inside', year: 2020),
    Discography(imgPath: 'assets/alone.png', name: 'Alone', year: 2023),
    Discography(
        imgPath: 'assets/heartlessSong.png', name: 'Heartless ', year: 2023)
  ];

  List<PopSinger> popList = [
    PopSinger(
        imgPath: 'assets/chaosSong.png',
        name: 'We Are Chaos',
        location: 'Easy Living',
        year: 2023),
    PopSinger(
        imgPath: 'assets/smileSong.png',
        name: 'Smile',
        location: 'Berrechid',
        year: 2023)
  ];

  int activeIndex = 0;

  List<Widget> playList() {
    return List.generate(5, (index) {
      return Container(
        height: 367,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/aloneSong.png"),
        )),
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  stops: [0.3, 0.97],
                  colors: [Colors.transparent, Color.fromRGBO(24, 24, 24, 1)])),
          child: Padding(
              padding: const EdgeInsets.only(left: 21),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "A.L.O.N.E",
                    style: GoogleFonts.inter(
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                      height: 37,
                      width: 127,
                      margin: const EdgeInsets.only(bottom: 40, top: 20),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 46, 0, 1),
                        borderRadius: BorderRadius.circular(19),
                      ),
                      alignment: Alignment.center,
                      child: const Text("Subscribe",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          )))
                ],
              )),
        ),
      );
    });
  }

  // List<Widget> playList() {
  //   return List.generate(5, (index) {
  //     return Container(
  //         height: 367,
  //         width: double.infinity,
  //         decoration: const BoxDecoration(
  //             image: DecorationImage(
  //                 fit: BoxFit.cover,
  //                 image: AssetImage("assets/aloneSong.png"))),
  //         child: Container(
  //           decoration: const BoxDecoration(
  //               gradient: LinearGradient(
  //                   begin: Alignment.center,
  //                   end: Alignment.bottomCenter,
  //                   colors: [
  //                 Colors.transparent,
  //                 Color.fromRGBO(24, 24, 24, 1)
  //               ])),
  //           child: Padding(
  //             padding: const EdgeInsets.only(left: 21),
  //             child: Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               mainAxisAlignment: MainAxisAlignment.end,
  //               children: [
  //                 Text(
  //                   'A.L.O.N.E',
  //                   style: GoogleFonts.inter(
  //                       color: const Color.fromRGBO(255, 255, 255, 1),
  //                       fontSize: 36,
  //                       fontWeight: FontWeight.w600),
  //                 ),
  //                 Container(
  //                   height: 37,
  //                   width: 127,
  //                   margin: const EdgeInsets.only(bottom: 40, top: 20),
  //                   decoration: BoxDecoration(
  //                     color: const Color.fromRGBO(255, 46, 0, 1),
  //                     borderRadius: BorderRadius.circular(19),
  //                   ),
  //                   alignment: Alignment.center,
  //                   child: Text(
  //                     'Subscribe',
  //                     style: GoogleFonts.inter(
  //                         fontSize: 16, fontWeight: FontWeight.w600),
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         ));
  //   });
  // }

  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(24, 24, 24, 1),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CarouselSlider(
                items: playList(),
                carouselController: _controller,
                options: CarouselOptions(
                    height: 410,
                    enableInfiniteScroll: false,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        activeIndex = index;
                      });
                    })),
            AnimatedSmoothIndicator(
              count: 5,
              activeIndex: activeIndex,
              onDotClicked: (index) {
                _controller.animateToPage(index,
                    duration: const Duration(microseconds: 100));
              },
              effect: const ExpandingDotsEffect(
                  dotColor: Color.fromRGBO(159, 159, 159, 1),
                  activeDotColor: Colors.red,
                  dotHeight: 10,
                  dotWidth: 10),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Discography',
                          style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.red),
                        ),
                        const Spacer(),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'See all',
                              style: GoogleFonts.inter(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(248, 162, 69, 1)),
                            ))
                      ],
                    ),
                    SizedBox(
                        height: 180,
                        width: double.infinity,
                        child: ListView.separated(
                          separatorBuilder: (context, i) {
                            return const SizedBox(
                              width: 35,
                            );
                          },
                          itemCount: discoList.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, i) {
                            return SizedBox(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        discoList[i].imgPath,
                                        fit: BoxFit.cover,
                                        height: 140,
                                        width: 119,
                                      )),
                                  Text(discoList[i].name,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: const Color.fromRGBO(
                                              203, 200, 200, 1))),
                                  Text("${discoList[i].year}",
                                      style: GoogleFonts.inter(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          color: const Color.fromRGBO(
                                              132, 125, 125, 1)))
                                ],
                              ),
                            );
                          },
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text('Popular singles',
                            style: GoogleFonts.inter(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(203, 200, 200, 1))),
                        const Spacer(),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'See all',
                              style: GoogleFonts.inter(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(248, 162, 69, 1)),
                            ))
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 200,
                      child: ListView.separated(
                        itemCount: popList.length,
                        padding: EdgeInsets.zero,
                        separatorBuilder: (context, i) => const SizedBox(
                          height: 25,
                        ),
                        itemBuilder: (context, i) {
                          return Container(
                            height: 72,
                            width: double.infinity,
                            padding: const EdgeInsets.only(right: 20),
                            child: Row(
                              children: [
                                Image.asset(
                                  popList[i].imgPath,
                                  height: 72,
                                  width: 67,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      popList[i].name,
                                      style: GoogleFonts.inter(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: const Color.fromRGBO(
                                              203, 200, 200, 1)),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "${popList[i].year}",
                                          style: GoogleFonts.inter(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                              color: const Color.fromRGBO(
                                                  132, 125, 125, 1)),
                                        ),
                                        Text(
                                          "  ",
                                          style: GoogleFonts.inter(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: const Color.fromRGBO(
                                                  203, 200, 200, 1)),
                                        ),
                                        Text(
                                          popList[i].location,
                                          style: GoogleFonts.inter(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                              color: const Color.fromRGBO(
                                                  132, 125, 125, 1)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                const Icon(
                                  Icons.more_vert_rounded,
                                  color: Colors.white,
                                  size: 34,
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
      bottomNavigationBar: Navbar(index: 0),
    );
  }
}
