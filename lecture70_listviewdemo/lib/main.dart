import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ListViewDemo());
  }
}

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({super.key});

  @override
  State createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State {

  List imagesList=[  
    "https://img1.hscicdn.com/image/upload/f_auto,t_ds_wide_w_1280,q_70/lsci/db/PICTURES/CMS/377400/377477.jpg",
    "https://img1.hscicdn.com/image/upload/f_auto,t_ds_wide_w_1280,q_70/lsci/db/PICTURES/CMS/377400/377477.jpg",
    "https://img1.hscicdn.com/image/upload/f_auto,t_ds_wide_w_1280,q_70/lsci/db/PICTURES/CMS/377400/377477.jpg",
    "https://img1.hscicdn.com/image/upload/f_auto,t_ds_wide_w_1280,q_70/lsci/db/PICTURES/CMS/377400/377477.jpg",


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ListViewApp"),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(255, 193, 7, 1),
      ),
      body:ListView.separated(
        itemCount: imagesList.length,
        separatorBuilder: (context, index) {
          return const Text(  
            "-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------",
        
          );
        },  
        itemBuilder: (BuildContext context,int index){
          return Container(  
            height:200,
            width:200,
            margin:EdgeInsets.all(10),
            child:Image.network(imagesList[index])
          );

        },
      )
      /*
      body:ListView(  
        children: [  
          Container(  
            height:200,
            width:200,
            child:Image.network(  
              "https://img1.hscicdn.com/image/upload/f_auto,t_ds_wide_w_1280,q_70/lsci/db/PICTURES/CMS/377400/377477.jpg",

            ),
            margin:const EdgeInsets.all(8),
          ),
          Container(  
            height:200,
            width:200,
            child:Image.network(  
              "https://img1.hscicdn.com/image/upload/f_auto,t_ds_wide_w_1280,q_70/lsci/db/PICTURES/CMS/377400/377477.jpg",
              
            ),
            margin:const EdgeInsets.all(8),
          ),
          Container(  
            height:200,
            width:200,
            child:Image.network(  
              "https://img1.hscicdn.com/image/upload/f_auto,t_ds_wide_w_1280,q_70/lsci/db/PICTURES/CMS/377400/377477.jpg",
              
            ),
            margin:const EdgeInsets.all(8),
          ),
          Container(  
            height:200,
            width:200,
            child:Image.network(  
              "https://img1.hscicdn.com/image/upload/f_auto,t_ds_wide_w_1280,q_70/lsci/db/PICTURES/CMS/377400/377477.jpg",
              
            ),
            margin:const EdgeInsets.all(8),
          ),
          Container(  
            height:200,
            width:200,
            child:Image.network(  
              "https://img1.hscicdn.com/image/upload/f_auto,t_ds_wide_w_1280,q_70/lsci/db/PICTURES/CMS/377400/377477.jpg",
              
            ),
            margin:const EdgeInsets.all(8),
          )
        ],
      )*/
      

    );
  }
}


