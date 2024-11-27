import 'package:flutter/material.dart';

class Appbar7 extends StatelessWidget {
  const Appbar7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Problem 7"),
          backgroundColor: Colors.blueAccent,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.amber,
                  padding: EdgeInsets.all(10),
                  child: Image.network(
                    height: 300,
                    width: 300,
                    //fit: BoxFit.fill,
                    "https://g2.img-dpreview.com/81C81CB44922409EA3C99FA3E42369CD.jpg",
                  ),
                ),
                Image.network(
                  height: 300,
                  width: 300,
                  "https://images.unsplash.com/photo-1507187632231-5beb21a654a2?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8NGslMjBuYXR1cmV8ZW58MHx8MHx8fDA%3D",
                ),
                Image.network(
                  height: 300,
                  width: 300,
                  "https://images.unsplash.com/photo-1507187632231-5beb21a654a2?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8NGslMjBuYXR1cmV8ZW58MHx8MHx8fDA%3D",
                ),
                Image.network(
                  height: 300,
                  width: 300,
                  "https://images.unsplash.com/photo-1507187632231-5beb21a654a2?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8NGslMjBuYXR1cmV8ZW58MHx8MHx8fDA%3D",
                ),
                Image.network(
                  height: 300,
                  width: 300,
                  "https://images.unsplash.com/photo-1507187632231-5beb21a654a2?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8NGslMjBuYXR1cmV8ZW58MHx8MHx8fDA%3D",
                ),
                Image.network(
                  height: 300,
                  width: 300,
                  "https://images.unsplash.com/photo-1507187632231-5beb21a654a2?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8NGslMjBuYXR1cmV8ZW58MHx8MHx8fDA%3D",
                ),
              ],
            ),
          ),
 ));
}
}
