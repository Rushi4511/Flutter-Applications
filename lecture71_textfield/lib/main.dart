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

  TextEditingController? nameController;

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
            hintText:"Enter Company Name"
            ),
            keyboardType: TextInputType.emailAddress,

          ),
          const SizedBox(  
            height:30,

          ),
          const TextField(  

          ),
        ],
      ),
      
      
    );
  }
}