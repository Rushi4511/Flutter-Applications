import "package:flutter/material.dart";

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  State<Assignment3> createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3> {
  int? selectedIndex = 0;
  final List<String> imageList[];
  void showNextImage(){
    setState(() {
      selectedIndex=selectedIndex!+1;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(  
        title: const Text("Display Images"),
      ),
      body:Center(  
      child:Column(  
        mainAxisAlignment: MainAxisAlignment.center,
        children: [  
          Image.network(  
            imageList[selectedIndex!],
            width:300,
            height:300,
          ),
          const SizedBox(  
            height:20,

          ),
          ElevatedButton(  
            onPressed: showNextImage,
            child: const Text("next"),
          ),
          const SizedBox(  
            height:20,
          ),
          ElevatedButton(  
            onPressed:(){ 
              setState(() {
                selectedIndex=0;
              });
            },
            child:const Text(  
              "Rest"
            )
          ),
        ],
      )
    );
 }
}
