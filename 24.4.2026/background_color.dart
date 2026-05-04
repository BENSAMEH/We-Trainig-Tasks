import 'package:counter_task/blue_screen.dart';
import 'package:counter_task/color_screen.dart';
import 'package:counter_task/red_screen.dart';
import 'package:flutter/material.dart';

import 'green_screen.dart';

class BackgroundColor extends StatefulWidget {
  const BackgroundColor({super.key});

  @override
  State<BackgroundColor> createState() => _BackgroundColorState();
}

class _BackgroundColorState extends State<BackgroundColor> {
  Color backGroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,title: Text("BackGround App",style: TextStyle(color: Colors.white),),centerTitle: true,),
      backgroundColor: backGroundColor,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MaterialButton(
            color: Colors.black,
            onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => ColorScreen(bgColor: Colors.red, colorName: "Red")));},
            child: Text(
              "Red",
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),MaterialButton(
            color: Colors.black,
            onPressed: () {

              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ColorScreen(bgColor: Colors.blue,colorName: "blue",),));
            },
            child: Text(
              "blue",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),MaterialButton(
            color: Colors.black,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ColorScreen(bgColor: Colors.green, colorName: "green")));
             },
            child: Text(
              "green",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),MaterialButton(color: Colors.black,onPressed: () {setState(() {
            backGroundColor=Colors.white;
          });
            
          },child: Icon(Icons.restart_alt,color: Colors.white,),)
        ],
      ),
    );
  }
}
