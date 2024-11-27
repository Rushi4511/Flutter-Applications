import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:TextFieldDemo(),
    );
  }
}


class TextFieldDemo extends StatefulWidget{
  const TextFieldDemo({super.key});

  @override
  State createState() => _TextFieldDemoState();

}


class _TextFieldDemoState extends State{

  TextEditingController? nameController ;
  String? val1;
  String? val2;
  String? val13;

  @override
  Widget build(BuildContext context){
    return Scaffold(  
      appBar:AppBar(  
        title:const Text("TextField Demo"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body:Column(  
        children: [  
          const SizedBox(  
            height:30,

          ),
          TextField(  
            controller: nameController,
            showCursor: true,
            decoration:const InputDecoration(  
              border:OutlineInputBorder(  
                borderRadius: BorderRadius.all(  
                  Radius.circular(30),
                )
              ),
            hintText:"Enter Name"
            ),
            keyboardType: TextInputType.emailAddress,
            onChanged: (value1){
              print("onchanged: $value1");
              value1=val1;
            },

          ),
          const SizedBox(  
            height:30,

          ),
          TextField(  
            controller: nameController,
            showCursor: true,
            decoration:const InputDecoration(  
              border:OutlineInputBorder(  
                borderRadius: BorderRadius.all(  
                  Radius.circular(30),
                )
              ),
            hintText:"Enter Dream Company Name"
            ),
            keyboardType: TextInputType.emailAddress,
            onChanged: (value2){
              print("onchanged: $value2");
            },

          ),
          const SizedBox(  
            height:30,

          ),
          TextField(  
            controller: nameController,
            showCursor: true,
            decoration:const InputDecoration(  
              border:OutlineInputBorder(  
                borderRadius: BorderRadius.all(  
                  Radius.circular(30),
                )
              ),
            hintText:"Enter Salary"
            ),
            keyboardType: TextInputType.emailAddress,
            onChanged: (value3){
              print("onchanged: $value3");
            },

          ),
          const SizedBox(  
            height:50,

          ),
          SizedBox(  
            height:100,
            child: Column(
              children: [  
                Text("Dream Company Name :$value1")
              ], 
             
              
            ),
          )



          
        ],
      ),
      
      
    );
  }
}