import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/AloneInTheAbyss.png",
                  height: 570,
                  width: 450,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 515,
                  left: 94,
                  child: Column(
                    children: [
                      Text("Alone In The Abyss",
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                                color: Color.fromRGBO(230, 154, 21, 1),
                                fontSize: 24,
                                fontWeight: FontWeight.w600),
                          )),
                      Text("Youlakou",
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 13,
                                fontWeight: FontWeight.w600),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Dynamic warmup!",
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    )),
                const Spacer(),
                Text("4 min",
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: LinearProgressIndicator(
              value: 0.5,
              minHeight: 6,
              borderRadius: BorderRadius.circular(15),
              valueColor:
                  AlwaysStoppedAnimation(Color.fromRGBO(230, 154, 21, 1)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.loop_rounded),
                iconSize: 30,
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.skip_previous_sharp),
                iconSize: 30,
                color: Colors.white,
              ),
              Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.play_arrow_rounded),
                  color: Colors.black,
                  iconSize: 50,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.skip_next_sharp),
                iconSize: 30,
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.volume_up_sharp),
                iconSize: 30,
                color: Colors.white,
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromRGBO(19, 19, 19, 1),
        selectedItemColor: Color.fromRGBO(230, 154, 21, 1),
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: "Like",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
