import 'package:flutter/material.dart';


class Lab7a2 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            customeWidget(title: 'Hello world',fontSize: 100),
            customeWidget(title: 'Hello',fontSize: 50)
          ],
        )
    );
  }

  Widget customeWidget({required String title,double? fontSize}){
    return Text(title,style: TextStyle(fontSize: fontSize),);
  }
}