import 'package:flutter/material.dart';

class partA1 extends StatelessWidget {
  const partA1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lab6PartA'),backgroundColor: Colors.lightBlue,),
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.green,)),
          Expanded(child: Container(color: Colors.white,)),
          Expanded(child: Container(color: Colors.pinkAccent,))
        ],
      ),
    );
  }
}
