import "package:flutter/material.dart";

class Assignment4 extends StatefulWidget {
  const Assignment4({super.key});

  @override
  State<Assignment4> createState() => _Assignment4State();
}

class _Assignment4State extends State<Assignment4> {
  bool likeColor = false;
  bool liked2Color = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text("Instagram",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.black,
                fontSize: 30,
              )),
          actions: const [
            Icon(
              Icons.favorite_outline,
              color: Colors.red,
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  "https://media.istockphoto.com/id/1354439687/vector/illustration-of-batsman-and-bowler-playing-cricket-championship-sports-with-trophy-on-blue.jpg?s=612x612&w=0&k=20&c=TZNvc0gHwsV8jrmLL-k26LfNYmuhF1J4lt0YRIWzsjY=",
                  width: double.infinity,
                  height: 200,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          likeColor = !likeColor;
                        });
                      },
                      icon: Icon(
                        likeColor
                            ? Icons.favorite
                            : Icons.favorite_outline_outlined,
                        color: likeColor ? Colors.red : Colors.white,
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.send),
                        color: Colors.white),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.comment_outlined),
                      color: Colors.white,
                    ),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
                    SizedBox(
                      width: 700,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.bookmark_outline))
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  "https://media.istockphoto.com/id/1354439687/vector/illustration-of-batsman-and-bowler-playing-cricket-championship-sports-with-trophy-on-blue.jpg?s=612x612&w=0&k=20&c=TZNvc0gHwsV8jrmLL-k26LfNYmuhF1J4lt0YRIWzsjY=",
                  width: double.infinity,
                  height: 200,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_outline_outlined,
                      ),
                    ),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.comment_outlined)),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
                    SizedBox(
                      width: 700,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.bookmark_add_outlined))
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  "https://media.istockphoto.com/id/1354439687/vector/illustration-of-batsman-and-bowler-playing-cricket-championship-sports-with-trophy-on-blue.jpg?s=612x612&w=0&k=20&c=TZNvc0gHwsV8jrmLL-k26LfNYmuhF1J4lt0YRIWzsjY=",
                  width: double.infinity,
                  height: 200,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_outline_outlined,
                      ),
                    ),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.comment_outlined)),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
                    SizedBox(
                      width: 700,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.bookmark_add_outlined))
                  ],
                )
              ],
            ),
          ],
        )));
  }
}
