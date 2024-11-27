import 'package:flutter/material.dart';

class ShoesScreen extends StatefulWidget {
  const ShoesScreen({super.key});

  @override
  State createState() => _ShoesScreenState();
}

class _ShoesScreenState extends State<ShoesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Shoes App",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 110,
              width:
                  double.infinity, // Make the container take up the full width
              decoration: const BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 110,
                    width: 125,
                    color: Colors.black,
                    child: Image.network(
                        "https://t3.ftcdn.net/jpg/06/12/00/18/360_F_612001823_TkzT0xmIgagoDCyQ0yuJYEGu8j6VNVYT.jpg"),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(
                          8.0), // Add padding for better layout
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "Nike Shoes",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 2.5),
                          const Text(
                            "With Iconic Style and Legendary \nand Comfort Fit Design",
                            style: TextStyle(
                              fontSize:
                                  12, // Increase font size to make it more readable
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          const SizedBox(height: 05),
                          Row(
                            children: [
                              const Text(
                                "Rs 500",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(width: 100),
                              const Text(
                                "-",
                                style: TextStyle(
                                  fontSize: 15, // Increase the font size
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                height: 25,
                                width: 25,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1,
                                  ),
                                ),
                                child:
                                    const Text("1"), // Keep text size readable
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                "+",
                                style: TextStyle(
                                  fontSize: 15, // Increase the font size
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 1),
            Container(
              height: 110,
              width:
                  double.infinity, // Make the container take up the full width
              decoration: const BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 110,
                    width: 125,
                    color: Colors.blueGrey,
                    child: Image.network(
                        "https://t3.ftcdn.net/jpg/06/12/00/18/360_F_612001823_TkzT0xmIgagoDCyQ0yuJYEGu8j6VNVYT.jpg"),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(
                          8.0), // Add padding for better layout
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "Nike Shoes",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 2.5),
                          const Text(
                            "With Iconic Style and Legendary \nand Comfort Fit Design",
                            style: TextStyle(
                              fontSize:
                                  12, // Increase font size to make it more readable
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          const SizedBox(height: 05),
                          Row(
                            children: [
                              const Text(
                                "Rs 500",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(width: 100),
                              const Text(
                                "-",
                                style: TextStyle(
                                  fontSize: 15, // Increase the font size
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                height: 25,
                                width: 25,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1,
                                  ),
                                ),
                                child:
                                    const Text("1"), // Keep text size readable
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                "+",
                                style: TextStyle(
                                  fontSize: 15, // Increase the font size
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 150,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Text("SubTotal ",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(
                        width: 225,
                      ),
                      Text("Rs 500",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Text("SubTotal ",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(
                        width: 225,
                      ),
                      Text("Rs 500",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Text("SubTotal ",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(
                        width: 225,
                      ),
                      Text("Rs 500",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 40,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Text(
                  "                   Submit Button",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
