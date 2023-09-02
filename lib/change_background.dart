

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "my app",
      // theme: ThemeData(scaffoldBackgroundColor: Colors.grey),
      home: const ChangeBackGroundApp(),
    )
  );
}

class ChangeBackGroundApp extends StatefulWidget{
   static const color_list = [Colors.green, Colors.red, Colors.grey];

  @override
  State<ChangeBackGroundApp> createState() => _StateChangeBackGround();

 const ChangeBackGroundApp({super.key});
}

class _StateChangeBackGround extends State<ChangeBackGroundApp>{

  var _count = 0;
  var index_color = 0;
  // Value is >= 0 and < 10.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar( title:  Text("my app."),
        backgroundColor: ChangeBackGroundApp.color_list[index_color],
      ),
      backgroundColor: ChangeBackGroundApp.color_list[index_color],
      body: Center(child:
      ElevatedButton(onPressed: () {
        setState(() {
          _count += 1;
        });
        changeIndexOfListColors();

      },
        child: const Text("change color1"),

      ),
      ),
    );
  }
   changeIndexOfListColors(){
    if (_count % 2 == 0){
      index_color =  Random().nextInt(3);
    }
  }



}


