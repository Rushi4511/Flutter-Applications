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
        appBar: AppBar( 
           title:const Text("BottomSheet") 

        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          
          showModalBottomSheet(context, builder){ 
            return const Column(  
              children: [  
                Text("Create Task",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
                ),
                const SizedBox(  
                  height:20,
                ),

                TextField(  
                  showCursor: true,
                  decoration: const  InputDecoration(  
                    border:OutlineInputBorder(  
                      
                    )
                  )
                )
              ],
            );

          }
        }),
      ),
    );
  }
}
