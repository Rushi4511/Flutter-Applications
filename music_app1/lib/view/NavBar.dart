import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app1/view/galleryPage.dart';
// import 'package:music_app/view/playerPage.dart';

class Navbar extends StatefulWidget {
  int index;
  Navbar({super.key, required this.index});
  @override
  State<StatefulWidget> createState() {
    return _NavbarState();
  }
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    int i = widget.index;
    return BottomNavigationBar(
        fixedColor: Colors.white,
        iconSize: 28,
        selectedLabelStyle: GoogleFonts.abel(
            fontWeight: FontWeight.w400, fontSize: 12, color: Colors.white),
        unselectedLabelStyle: GoogleFonts.abel(
            fontWeight: FontWeight.w400, fontSize: 12, color: Colors.white),
        unselectedItemColor: Colors.white,
        //backgroundColor: Colors.black,
        currentIndex: widget.index,
        onTap: (index) {
          // if (index == 0 && i != 0) {
          //   Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          //     return const GallaryPage();
          //   }));
          // } else if (index == 4 && i != 4) {
          //   Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          //     return PlayerPage();
          //   }));
          // }
        },
        items: const [
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.favorite_border_rounded,
                color: Color.fromRGBO(230, 154, 21, 1)),
            icon: Icon(Icons.favorite_border_rounded, color: Colors.white),
            label: 'Favorite',
            backgroundColor: Color.fromRGBO(19, 19, 19, 1),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.white), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, color: Colors.white),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_travel_rounded, color: Colors.white),
              label: 'Cart'),
          BottomNavigationBarItem(
              activeIcon:
                  Icon(Icons.person, color: Color.fromRGBO(230, 154, 21, 1)),
              icon: Icon(Icons.person, color: Colors.white),
              label: 'Favorite',
              backgroundColor: Color.fromRGBO(19, 19, 19, 1)),
        ]);
  }
}
