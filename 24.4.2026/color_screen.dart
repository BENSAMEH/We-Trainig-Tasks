import 'package:flutter/material.dart';

class ColorScreen extends StatelessWidget {

   ColorScreen({required this.bgColor,required this.colorName});

  String colorName;

  Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(backgroundColor: Colors.white,title: Text(colorName,style: TextStyle(fontWeight: FontWeight.bold),),),
      body: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              colorName,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        width: double.infinity,
      ),
    );
  }
}
