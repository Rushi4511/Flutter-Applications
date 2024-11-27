import "package:flutter/material.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CricPlayerList(),
    );
  }
}

class CricPlayerList extends StatefulWidget {
  const CricPlayerList({super.key});

  @override
  State createState() => _CricPlayerState();
}

class _CricPlayerState extends State {
  String format = "";
  List<List<String>> cricPlayerList = [
    [
      "https://upload.wikimedia.org/wikipedia/commons/e/ef/Virat_Kohli_during_the_India_vs_Aus_4th_Test_match_at_Narendra_Modi_Stadium_on_09_March_2023.jpg",
      "https://media.gettyimages.com/id/1956027171/photo/indias-captain-rohit-sharma-gestures-during-the-third-day-of-the-first-test-cricket-match.jpg?s=612x612&w=gi&k=20&c=Z-QoMHZzoAC9C2CHqHYT5no0iy7KWuzEAudlxtn1efE=",
      "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202402/sarfaraz-khan-154614392-16x9_0.jpeg?VersionId=TjNPQRy4yLLknIjea2YRFM3lBi5Q4RaV&size=690:388"
    ],
    [
      "https://pbs.twimg.com/profile_images/1656196406829535238/2a125qzC_400x400.jpg",
      "https://img1.hscicdn.com/image/upload/f_auto,t_ds_w_800,q_50/lsci/db/PICTURES/CMS/352800/352812.3.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/RinkuSingh_Ireland_vs_India.jpg/640px-RinkuSingh_Ireland_vs_India.jpg"
    ],
    [
      "https://www.mykhel.com/img/2023/09/shreyas-iyer-practice-featured-1694671978.jpg",
      "https://img1.hscicdn.com/image/upload/f_auto,t_ds_w_1280,q_80/lsci/db/PICTURES/CMS/373000/373042.jpg",
      "https://images.indianexpress.com/2022/09/bumrah.jpg"
    ]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.redAccent,
          title: const Text("Cricket Players")),
      body: ListView.separated(
          itemCount: cricPlayerList.length,
          itemBuilder: (BuildContext context, int idx) {
            // return Container(
            //   height: 300,
            //   width: 300,
            //   margin: const EdgeInsets.all(10),
            //   child: Image.network(cricPlayerList[idx].elementAt()),
            // );
            return ListView.builder(
                shrinkWrap: true,
                itemCount: cricPlayerList[idx].length,
                itemBuilder: (BuildContext context, int count) {
                  if (count == 0 && idx == 0) {
                    format = "Test";
                  } else if (count == 0 && idx == 1) {
                    format = "T20";
                  } else if (count == 0 && idx == 2) {
                    format = "One Day";
                  } else {
                    format = "";
                  }
                  return Column(
                    children: [
                      Text(format),
                      Container(
                        height: 300,
                        width: 300,
                        margin: const EdgeInsets.all(10),
                        child:
                            Image.network(cricPlayerList[idx].elementAt(count)),
                      )
                    ],
                  );
                });
          },
          separatorBuilder: (BuildContext context, int val) {
            // if ((val + 1) % 3 == 0 && val != 0) {
            //   return const Text(
            //       "-------------------------------------------------------");
            // }
            // return const Text("");
            return const Divider(
              thickness: 10,
            );
          }),
);
}
}
