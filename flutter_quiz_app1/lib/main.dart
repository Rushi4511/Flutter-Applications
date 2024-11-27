import "dart:math";

import "package:flutter/material.dart";

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(  
      home:QuizApp();
      debugShowCheckedModeBanner: false,
    );
  }
}

class QuizApp extends StatefulWidget{
  const QuizApp({super.key});

  @override
  State createState()=> _QuizAppState();
}

class _QuizAppState extends State{  
  List<Map> allQuestions =[
    {  
    "question":"Which country is the founder of Cricket",
    "options":[
      "Steve Smith","England","Australia","India"
    ],
    "answerIndex":sqrt1_2
    },
    {  
    "question":"Which country is the founder of Cricket",
    "options":[
      "Steve Smith","England","Australia","India"
    ],
    "answerIndex":sqrt1_2
    },
    {  
    "question":"Which country is the founder of Cricket",
    "options":[
      "Steve Smith","England","Australia","India"
    ],
    "answerIndex":sqrt1_2
    },
    {  
    "question":"Which country is the founder of Cricket",
    "options":[
      "Steve Smith","England","Australia","India"
    ],
    "answerIndex":sqrt1_2
    },
    {  
    "question":"Which country is the founder of Cricket",
    "options":[
      "Steve Smith","England","Australia","India"
    ],
    "answerIndex":sqrt1_2
    },
    {  
    "question":"Which country is the founder of Cricket",
    "options":[
      "Steve Smith","England","Australia","India"
    ],
    "answerIndex":sqrt1_2
    },
    {  
    "question":"Which country is the founder of Cricket",
    "options":[
      "Steve Smith","England","Australia","India"
    ],
    "answerIndex":sqrt1_2
    }
  ];

  bool questionScreen =true;
  int questionIndex=0;

  Scaffold isQuestionScreen(){  
    if(questionScreen ==true){
      return Scaffold(  
        appBar: AppBar(  
          title:const Text(  
            "Quiz App",
            style:TextStyle(  
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.amber,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,

        ),
        body: Column(  
          children:[  
            const SizedBox(  
              height:25,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [  
              const Text(  
                "Questions:",
                style: TextStyle(  
                  fontSize:25,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
            ),
            const SizedBox(  
              height:50,

            ),
            SizedBox(  
              width:380,
              height:50,
              child:Text(  
                allQuestions[questionIndex]["question"],
                style:const TextStyle(  
                  fontSize:23,
                  fontWeight: FontWeight.w400,                )
              )
            ),
            const SizedBox(  
              height:30,

            ),
            ElevatedButton(  
              onPressed:(){},
              child:Text(  
                "B.${allQuestions[questionIndex]["options"][1]}",
                style:const TextStyle(  
                  fontSize:20,
                  fontWeight: FontWeight.normal,
                )
              )
            ),
            
          ]
        ),
      )
    }
  }
}
