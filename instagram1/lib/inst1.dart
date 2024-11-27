import 'package:flutter/material.dart';
import 'package:instagram_assignment_9/profile.dart';

class InstaAssignment4 extends StatefulWidget {
  const InstaAssignment4({super.key});

  @override
  State<InstaAssignment4> createState() => _InstaAssignment4State();
}

class _InstaAssignment4State extends State<InstaAssignment4> {
  bool likeColor1 = false;
  bool likeColor2 = false;
  bool likeColor3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Image.asset(
              "assets/images/insta_logo.png",
              scale: 17,
            ),
          ),
          actions: const [
            Icon(
              Icons.favorite_outline,
              color: Color.fromARGB(255, 248, 246, 245),
            ),
            SizedBox(
              width: 25,
            ),
            Icon(
              Icons.offline_bolt_outlined,
              color: Color.fromARGB(255, 241, 240, 240),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: ListView(
          children: [
            SingleChildScrollView(
                padding: const EdgeInsets.only(top: 10),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: 9,
                        ),
                        Container(
                          height: 80,
                          width: 80,
                          //color: Colors.amber,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              gradient: const RadialGradient(
                                  center: Alignment.bottomLeft,
                                  radius: 1.2,
                                  colors: [
                                    Color.fromARGB(255, 255, 243, 7),
                                    Color.fromARGB(255, 240, 7, 139)
                                  ])),
                          child: CircleAvatar(
                              backgroundImage: const NetworkImage(
                                  "https://images.pexels.com/photos/33101/new-wing-emergency-at-the-moment.jpg?auto=compress&cs=tinysrgb&w=600"),
                              child: IconButton(
                                  iconSize: 30,
                                  alignment: Alignment.topLeft,
                                  padding: EdgeInsets.fromLTRB(50, 50, 0, 0),
                                  onPressed: () {},
                                  //disabledColor: Colors.white,
                                  icon: const Icon(
                                    Icons.add_circle,
                                    color: Color.fromARGB(255, 0, 126, 229),
                                  ))),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Your story",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          //color: Colors.amber,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              gradient: const RadialGradient(
                                  center: Alignment.bottomLeft,
                                  radius: 1.2,
                                  colors: [
                                    Color.fromARGB(255, 255, 243, 7),
                                    Color.fromARGB(255, 240, 7, 139)
                                  ])),
                          padding: const EdgeInsets.all(2.5),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.black),
                            padding: const EdgeInsets.all(4),
                            child: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=600",
                                //fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        const Text(
                          "angel_priya69",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          //color: Colors.amber,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              gradient: const RadialGradient(
                                  center: Alignment.bottomLeft,
                                  radius: 1.2,
                                  colors: [
                                    Color.fromARGB(255, 255, 243, 7),
                                    Color.fromARGB(255, 240, 7, 139)
                                  ])),
                          padding: const EdgeInsets.all(2.5),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.black),
                            padding: const EdgeInsets.all(4),
                            child: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://cdn1.picuki.com/hosted-by-instagram/q/0exhNuNYnjBGZDHIdN5WmL9I2PwkAQxLKfhSQ7e71yJjMBhsLH6QvJA0mpCj4yRwKwVlASuRYztg7YgrWVRUCT17PEDdT7KLTTpW6aiYU+2qvDZi95FinLs3K3QfZ3Wr98UpXGKpNWwSDv5PHL%7C%7Clo7gX5vrpZSgEojeSKrVGnGZTjse3TO9%7C%7C2pYf5%7C%7CHSv1izv9QpcmkazXgpdAd4+pvlpDk1VOCtO8BnsaBwVLYBxMEM7vm%7C%7CzGjpX2skeiB4FTObtMXPmvpFui3rSzY57zz2AZY1LHMRiVbmuRALpqY9oI+bBqRM4acwhqfFSiACW2E2hjtfwZftgAHsSUGImUBRwT2Ej+b3e%7C%7CkZpZTzLfaiXt7wkQzaR+DwILAYc146VdPyegzxOszlKvxex6RuWatqkg2RvlTzd%7C%7C333xEmSWAMjDzWXMJPYvu8nfnw6E3x2geJrRMdqN+RKKl17A9T4tS96gprdGX0UpBgAznf4Ad3RMR4UPjHm8OCPslkHTckZs8spGK0lJxcfU6z8e9rNA==.jpeg",
                                //fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        const Text(
                          "virat.kohli",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          //color: Colors.amber,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              gradient: const RadialGradient(
                                  center: Alignment.bottomLeft,
                                  radius: 1.2,
                                  colors: [
                                    Color.fromARGB(255, 255, 243, 7),
                                    Color.fromARGB(255, 240, 7, 139)
                                  ])),
                          padding: const EdgeInsets.all(2.5),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.black),
                            padding: const EdgeInsets.all(4),
                            child: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTK_zkb63SMVU3Cy7elsc0XDQckxcIxQwUAow&usqp=CAU",
                                //fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        const Text(
                          "cr7_suuuu",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          //color: Colors.amber,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              gradient: const RadialGradient(
                                  center: Alignment.bottomLeft,
                                  radius: 1.2,
                                  colors: [
                                    Color.fromARGB(255, 255, 243, 7),
                                    Color.fromARGB(255, 240, 7, 139)
                                  ])),
                          padding: const EdgeInsets.all(2.5),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.black),
                            padding: const EdgeInsets.all(4),
                            child: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://images.pexels.com/photos/14755738/pexels-photo-14755738.jpeg?auto=compress&cs=tinysrgb&w=600",
                                //fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        const Text(
                          "emilly_love22",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          //color: Colors.amber,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              gradient: const RadialGradient(
                                  center: Alignment.bottomLeft,
                                  radius: 1.2,
                                  colors: [
                                    Color.fromARGB(255, 255, 243, 7),
                                    Color.fromARGB(255, 240, 7, 139)
                                  ])),
                          padding: const EdgeInsets.all(2.5),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.black),
                            padding: const EdgeInsets.all(4),
                            child: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://images.pexels.com/photos/1898555/pexels-photo-1898555.jpeg?auto=compress&cs=tinysrgb&w=600",
                                //fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        const Text(
                          "annable_doe09",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
            const Divider(
              color: Color.fromARGB(255, 64, 63, 63),
              thickness: 0.3,
            ),
            // const SizedBox(
            //   height: 5,
            // ),
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Profile("king_maker"),
                  Image.network(
                    "https://images.pexels.com/photos/33109/fall-autumn-red-season.jpg?auto=compress&cs=tinysrgb&w=600",
                    width: double.infinity,
                    height: 260,
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              likeColor1 = !likeColor1;
                            });
                          },
                          icon: Icon(
                            likeColor1
                                ? Icons.favorite
                                : Icons.favorite_outline_outlined,
                            color: likeColor1
                                ? Colors.pink
                                : Color.fromARGB(255, 228, 225, 225),
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.comment_outlined,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.send_outlined,
                            color: Colors.white,
                          )),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.bookmark_outline,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 14, right: 10),
                        child: CircleAvatar(
                          radius: 10,
                          backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1610024062303-e355e94c7a8c?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fGluc3RhZ3JhbSUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2),
                        child: Text(
                          "Liked by a_k_s_h_i_t2 and 362,412 others",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 13, bottom: 20),
                    child: const Text(
                      "...more\nView all 6,540 comments\n9 january | Suggested post | see translation",
                      style:
                          TextStyle(color: Color.fromARGB(255, 159, 151, 151)),
                    ),
                  ),
                ]),
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Profile("khandu.don"),
                  Image.network(
                    "https://images.pexels.com/photos/2387866/pexels-photo-2387866.jpeg?auto=compress&cs=tinysrgb&w=600",
                    width: double.infinity,
                    height: 560,
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              likeColor2 = !likeColor2;
                            });
                          },
                          icon: Icon(
                            likeColor2
                                ? Icons.favorite
                                : Icons.favorite_outline_outlined,
                            color: likeColor2
                                ? Colors.pink
                                : const Color.fromARGB(255, 228, 225, 225),
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.comment_outlined,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.send_outlined,
                            color: Colors.white,
                          )),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.bookmark_outline,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 14, right: 10),
                        child: CircleAvatar(
                          radius: 10,
                          backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1610024062303-e355e94c7a8c?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fGluc3RhZ3JhbSUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2),
                        child: Text(
                          "Liked by a_k_s_h_i_t2 and 362,412 others",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 13, bottom: 20),
                    child: const Text(
                      "...more\nView all 6,540 comments\n9 january | Suggested post | see translation",
                      style:
                          TextStyle(color: Color.fromARGB(255, 159, 151, 151)),
                    ),
                  ),
                ]),
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Profile("how_king500"),
                  Image.network(
                    "https://images.pexels.com/photos/547557/pexels-photo-547557.jpeg?auto=compress&cs=tinysrgb&w=600",
                    width: double.infinity,
                    height: 260,
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              likeColor3 = !likeColor3;
                            });
                          },
                          icon: Icon(
                            likeColor3
                                ? Icons.favorite
                                : Icons.favorite_outline_outlined,
                            color: likeColor3
                                ? Colors.pink
                                : const Color.fromARGB(255, 228, 225, 225),
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.comment_outlined,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.send_outlined,
                            color: Colors.white,
                          )),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.bookmark_outline,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 14, right: 10),
                        child: CircleAvatar(
                          radius: 10,
                          backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1610024062303-e355e94c7a8c?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fGluc3RhZ3JhbSUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2),
                        child: Text(
                          "Liked by a_k_s_h_i_t2 and 362,412 others",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 13, bottom: 20),
                    child: const Text(
                      "...more\nView all 6,540 comments\n9 january | Suggested post | see translation",
                      style:
                          TextStyle(color: Color.fromARGB(255, 159, 151, 151)),
                    ),
                  ),
                ])
          ],
        )
        // body: SingleChildScrollView(
        //     child: Column(
        //   children: [
        //     Column(
        //         mainAxisAlignment: MainAxisAlignment.start,
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Image.network(
        //             "https://plus.unsplash.com/premium_photo-1666805690529-aab9725d0d3d?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8NGslMjBuYXR1cmV8ZW58MHx8MHx8fDA%3D",
        //             width: double.infinity,
        //             height: 200,
        //           ),
        //           Row(
        //             children: [
        //               IconButton(
        //                   onPressed: () {},
        //                   icon: const Icon(Icons.favorite_outline_outlined)),
        //               IconButton(
        //                   onPressed: () {},
        //                   icon: const Icon(Icons.comment_outlined)),
        //               IconButton(
        //                   onPressed: () {}, icon: const Icon(Icons.send)),
        //             ],
        //           )
        //         ]),
        //     Column(
        //         mainAxisAlignment: MainAxisAlignment.start,
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Image.network(
        //             "https://plus.unsplash.com/premium_photo-1666805690529-aab9725d0d3d?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8NGslMjBuYXR1cmV8ZW58MHx8MHx8fDA%3D",
        //             width: double.infinity,
        //             height: 200,
        //           ),
        //           Row(
        //             children: [
        //               IconButton(
        //                   onPressed: () {},
        //                   icon: const Icon(Icons.favorite_outline_outlined)),
        //               IconButton(
        //                   onPressed: () {},
        //                   icon: const Icon(Icons.comment_outlined)),
        //               IconButton(
        //                   onPressed: () {}, icon: const Icon(Icons.send)),
        //             ],
        //           )
        //         ]),
        //     Column(
        //         mainAxisAlignment: MainAxisAlignment.start,
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Image.network(
        //             "https://plus.unsplash.com/premium_photo-1666805690529-aab9725d0d3d?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8NGslMjBuYXR1cmV8ZW58MHx8MHx8fDA%3D",
        //             width: double.infinity,
        //             height: 200,
        //           ),
        //           Row(
        //             children: [
        //               IconButton(
        //                   onPressed: () {},
        //                   icon: const Icon(Icons.favorite_outline_outlined)),
        //               IconButton(
        //                   onPressed: () {},
        //                   icon: const Icon(Icons.comment_outlined)),
        //               IconButton(
        //                   onPressed: () {}, icon: const Icon(Icons.send)),
        //             ],
        //           )
        //         ]),
        //   ],
        // ))
);
}
}