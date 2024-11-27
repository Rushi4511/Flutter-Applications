import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: Text("BoxDecoration"),
        ),
        body:Center(  
          child:Container(  
            width:120,
            height:120,
            decoration: BoxDecoration(  
              color: Color.fromRGBO(2,147,172,1),
              shape:BoxShape.circle,
              border:Border.all(width:2,color:const Color.fromRGBO(0, 0, 0, 1)),
              boxShadow: const [  
                BoxShadow(  
                  color: Colors.red,
                  offset:Offset(-20,-20),
                  blurRadius: 40,
                )
              ]
              ),
            ),
          )
        )
      );
    
  }
}
